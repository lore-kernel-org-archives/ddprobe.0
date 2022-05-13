Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 141363232
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652442719;
	h=To:Subject:From:Message-Id:Date;
	bh=7RZbux21qvxqClowPmWyLjhLhFf40uIASrzK6r3ci8I=;
	b=Gj0OxzPNrye3uTjADqNC0pb4Un0E/mwjtm0XbLp5gnWeuZWHJm5+72rtD+B0ckjP
	GdQVfkoXPUIhD5s67QfkasTol22WLXPdaNkXSjwTfump94YetC/2wFqomn/DphrSWTk
	0isYw5Ywy6E9Gcz05QcIqyUQMXbcbHJpM3pKaPB0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652442719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7RZbux21qvxqClowPmWyLjhLhFf40uIASrzK6r3ci8I=;
	b=e/3b5LCkMPlpGXiCLF8QOp3VXBmdZP5kwUJCeDK5U+gY+7KQZ4jpW6A9LqrmUdrX
	yBfSiTfbccF/r1Vjk14jExVvHc6nzldLdv4gegCLIcPkIpezgPuQdlMErGP687t+Rf1
	KuS+kMppTjTL/s78M6lcLrmITnGth6CZAjGUtVK8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd42e43b-e15dc6b7-4d1e-4c61-9c8d-9102f001a440-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0871c33378f7d4b553a344c5cf58ef5c97ba0fb00cc6968471c8ce0cd11a1eee
Date: Fri, 13 May 2022 11:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652442719
