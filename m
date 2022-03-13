Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6857580E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647152484;
	h=To:Subject:From:Message-Id:Date;
	bh=2T3YMfu6e3RUXYZJjd1Mzjbkv1mmZJ+QC2sLqVp3ttA=;
	b=PVnHtkpEPvI6fkmCvXebUpLcgRqR9T38+FvHKeJd/BtlYgilOtWEmNe3znTdrG3w
	E5BUldJVf7I0Z+XgSnODA/4Wr+0Wqhm8GiwkWj4nsRGQu7b54MUbQd8M7kP4LivsWOV
	t7kpmNO0I2rC+AFdkpUOhoeeAk1WtfM7TCaQm8Wo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647152484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2T3YMfu6e3RUXYZJjd1Mzjbkv1mmZJ+QC2sLqVp3ttA=;
	b=PxNuaP2I2756oM4DG9Xg+cHnGUWV2FiWOL5YZzm4HbQifGpiL8+HQAYYSMos1cW5
	fphiSpPj0NL/V1xednMFyzf5/vwnTGy/3IpG9VkFCiHL5dyF95G8+ewyeuNjpNDSSVq
	9aERdUOr0+1l77MnmuBBq+cMP0bL3DTHnt4YaOFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81f051ab-dc8bd2ea-7cb3-4a4b-b417-b313b0055479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6e9f2cfdf8f3751ebe025e159db2cd1510563c877e774aca02681e0652f7e30
Date: Sun, 13 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647152484
