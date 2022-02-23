Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65FC2800
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 05:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645595485;
	h=To:Subject:From:Message-Id:Date;
	bh=pukAETFAjNq5exulb2MyBBEetcPginbjRpqNgeEPfl4=;
	b=UaXJJb5Goq2SizPBqCI0LU0AiVQMlX7xCT2uHkx/F1R0S4Ll6VihcmLFYesBloJX
	cKSYqBLhNSMlb94LE2R9P8D0Z/IWhiomoVvP+X1Qj2MvMw7TBS9ZadFe6P3AGjX2Ovd
	+4wiWsaNaGyWKCnbdOXQ3p1GufymuGgtivJ9MXLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645595485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pukAETFAjNq5exulb2MyBBEetcPginbjRpqNgeEPfl4=;
	b=cbXtBlNVknSwPIgJVCUZ5eS0+Yblfv4vLgZA+ZykMftUF+PJrWCNxAx0UYOMQFvH
	iEn8PFuG3aI3y2haOIxb0m01PHf00Q5T2oB2vahChnnDXd8/drKjCyhyCmvMjava2n8
	RkZcsbhPGX/W77XULgopt60Zuh3prVt4EOqUQYrM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f25226272-a40b5ff8-3109-4d16-9e72-f30e29e5e414-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07eff1a40bb6e1ce539a1bdbdf5facf717553642ef4607c4664acdf6cc11ab55
Date: Wed, 23 Feb 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645595484
