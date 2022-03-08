Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F8C2F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646702784;
	h=To:Subject:From:Message-Id:Date;
	bh=Y0ZpXGVmBeGT+s8sMRCbDA6j7G3LfM/+kTDfBUEnTyQ=;
	b=FziFSADUCuKOzTBeuIyZzIZZj70wPctMnUMc6uXjfKOZQztVXudboUYoihTF2OX4
	cLnh2LINwv9HWPSo0pCQNyC0wo3L2PxI75+MkPEaOQyI3RI3KRzlJCL6G7eqmOW4DTO
	zJs4k8F1y3M79pPBIONGTJ0JzeDOvv5gBLiP+72Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646702784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y0ZpXGVmBeGT+s8sMRCbDA6j7G3LfM/+kTDfBUEnTyQ=;
	b=TsDG+epZhnEYLIAJ7YwBblcBFNIVOlWubK86rtPUwkVoE0CDMF7HYqM5ENGHzwmg
	OZhHFxKWCuvS/VVkZuApucaqL3K27WrKLmExBJMdX1p+Kb1e/YDIRzUGqvM5W8VCZfK
	aNb66suG7gjjIJxGFmTm5x45o4N6tx7NUxajWJGQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f672270dd-502ffcbc-2f7e-4458-871e-cd25bc9c4891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0c98c5346840c464b6680a27e3b452ff7b8e238ec9f95ca4544c29eb7d6544c
Date: Tue, 8 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646702784
