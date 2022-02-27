Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9135A7A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645993284;
	h=To:Subject:From:Message-Id:Date;
	bh=aWap0XphIlSuseOlKHFOt3+QOWYfZoN5B+avh9DdmD8=;
	b=gZGv4JOTW89LBcEeD8VipjfgAptLMYq7WTlkkSv1LLli4IefXVShtRFFqlcTkpuR
	LgQ6IO7W2MqxsljOzQeiHqfYt01uJjG2v4HEUEtcmPBJ7v+wstEjfvBkoyow+DTA0K0
	rR8sX4nQzObPRKkdtLQ/cVZGNOu12mf+8CPp8svE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645993284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aWap0XphIlSuseOlKHFOt3+QOWYfZoN5B+avh9DdmD8=;
	b=KjYlsaULvEZPVHEshf6bAvpk+NcpNL/GKSMg1livsPPM/HWUV4gNbcDS2/hV01cE
	4MCgcZkj65YyMv1vT39XVrQZR5XhDlh5gMfF5O8arlNDxX7ithVMFpM92Vp00moaNAa
	rKmzJ+/l2Tho2hmR3F+gxUWn2CP59iWrPvnzVaiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cd85481-7bbdb2bc-4878-4e68-b3a9-72114fc3654c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af0c982f9df0cccb3e41f4cbe626babb1ead70fffe357d9128e3b7b6d125516a
Date: Sun, 27 Feb 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645993284
