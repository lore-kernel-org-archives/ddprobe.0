Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDE51FD4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 19:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651345258;
	h=To:Subject:From:Message-Id:Date;
	bh=CN+osYeIdVmo5NtLM4oW0nB84fYbVIKrWMWUlytL3Zo=;
	b=HDauCaZXnCEs8dMbvW8N2Xyl5Ftp6PIaE8eCG3mkZC1s1vF68NP9DMAw4V30R+jw
	0MN49r4zPr8s5xfF0//ui4jo6e970SehtUETfdbcAIJGiibzE628bY7jV7fIAgIel/x
	t5Jjx1WyOEY1bEqRNdlkzb6MLcYmVmDdKSpeTN1g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651345258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CN+osYeIdVmo5NtLM4oW0nB84fYbVIKrWMWUlytL3Zo=;
	b=QwUgL9NcCt+j6BR5L57b2s/cPmwSkrjuG93MhL7XPrPCfCp9J5u+F2qFCVzVgFE6
	e7xZ1z2o8q67XJSVk+qc0eDXsw1nHN8uSir2FhJBuRv+twF8dh/i3wfdvDdAD83IsNS
	0n/+b8ns1Tw8vPXJWmsgHCx8xet+0K17X/AOR9vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807bd8f7a6-4a5358ce-f52a-4d94-a81d-a9d1e73d157f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d35c90c8b2cb9f8eb3484a13814399dcf29c9e5a369a1f6010196858f6fc667
Date: Sat, 30 Apr 2022 19:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651345258
