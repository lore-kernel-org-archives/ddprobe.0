Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5EB2912
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 18:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652206019;
	h=To:Subject:From:Message-Id:Date;
	bh=tdIQozHqRfIqQsbMQxgkffMvStu+07IMI099LBKA1+g=;
	b=b7dPBO6Myyjez4PRqcamz61Wtq5u1HIuPlyEV9hFa1TFnABDLZMmj7MQw3FPOmI3
	pIA5OSqJk9UkEJlnAWnjIAYXVzBw80gPkpkUur5dWk6W9LK5/J2AsJsAr4OSv34V8aZ
	wnx/dNDdQSH+l8iEMh7XUFsrq0fFoVKG0yeHzkC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652206019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tdIQozHqRfIqQsbMQxgkffMvStu+07IMI099LBKA1+g=;
	b=fQZW7M7XS5bMQXzfiAYFVc3rU7hkLGZyGUBEq9muRWAC4Qq5691p1nSx4P3KLbO2
	PvDiN0n709Bx3uM5sxZxEAgcy357K4iPsPFOGiAgnvxvDi2QX99MwPwmXV4YSwPabwQ
	gyncXRJNgF99mGUv2hJQh66uJ1GZFhAM0woMX0IU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af2722ec-b8359d80-f7ab-431f-99fd-d6f665335308-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5e6f012cb1ab18eed1d1118a2e7413077d899ecf91a61f6fff974c1a49e35d9
Date: Tue, 10 May 2022 18:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652206019
