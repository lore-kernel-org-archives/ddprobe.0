Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D9F2564
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 13:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649336458;
	h=To:Subject:From:Message-Id:Date;
	bh=KQWX37v0M6/fAax/7TNwzCxSJCT85EG1JFkHrBp+ENU=;
	b=jVzY98EwcHdn0JfAcnxrpMG3scKrzlHk1+coub4gr6qyGb1HaOyk8RXHUEvGYnNz
	GDpmpjgU4iDHWM23RI1DDxqb71K4TbOfjuH4ePKfGiSDACW0WIiF0S0LVUkV7s7bkap
	7G0QPgV4XZyAUySECWiNeKFJwAvi3kO340sNQPP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649336458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KQWX37v0M6/fAax/7TNwzCxSJCT85EG1JFkHrBp+ENU=;
	b=gHEenCs615BiXjF1IntRJmw6sABjjQYULqlnuAUx56+r+YvOSa8C5hRNl6vbBLuH
	PWSvxwknogVN142ojThq0N2BUg/ywclNXI1jKyRx5a1fr1sw+IiZeCRVpu9HEnpMR3z
	o8PYH7tPC9FPIkeIFi9PNVUz3Lm03Xlsomi7nSus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180041d1c07-14c067af-d44f-4f53-acbc-32835ccdcc5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 900294d4e5c37ec3d1468fb3bc1459913081bf903db2e8df133f9a3928987e66
Date: Thu, 7 Apr 2022 13:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649336458
