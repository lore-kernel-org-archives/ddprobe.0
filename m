Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CB81C00
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655850479;
	h=To:Subject:From:Message-Id:Date;
	bh=KFxG08y0i6nrb2uFgs0dUjw/7+bpzrtKk2GGojxV1CY=;
	b=ZK1UrzGG3yD7+TZyPX7yTzOLUUU8fMSABOzUxgfHH3xfInqi6tL89rXn0cf2toys
	WxkY+Q+GC+VW1guud3Aeo+33dy4PFDH2XK6kXWPSNLvIf8GkPSdCwnkVEsK7GmyaEbZ
	f3Cdu4PFhdRPo8kYC+h2mQZfW0UCbNQU+Pdb0ZMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655850479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KFxG08y0i6nrb2uFgs0dUjw/7+bpzrtKk2GGojxV1CY=;
	b=QgJY1yAhMNiCCzMO+hIVqVnuKYfQILgjm9XSp20yESR0jPhc7qR4go6bciyfFbdb
	F7wxuH9DLfPDSx1lZdqGCx1svPZwr11oYuFkcl/+x/RAZHXW0LsFaDmaTDHadx0ihoj
	9RPWztb8MNypO5EGrL6JvZ9z4+kIFX8o2E//lH9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018188612eab-4667ae15-4534-470e-b68e-e4cc646eed83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e11537e68e4c5c01e3c8a2e67add55c7890c3b179616d020f6c1ed88494f5c2b
Date: Tue, 21 Jun 2022 22:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655850479
