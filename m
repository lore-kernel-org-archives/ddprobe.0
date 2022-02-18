Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B434828E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645207285;
	h=To:Subject:From:Message-Id:Date;
	bh=E/oG4DS8WEYXMFdrIcy0yc75ISM4Smxt5T5t+qbRiq4=;
	b=QTf9VaeOmAKkzD61ov6Qm+pONymp3dcSDTY790dafS5skTJVVZ3MMQ9m5JTSdTfW
	WetflBgH0dpDGAg9ZF1f5rjE0upX7yN1tUooPF8qVDcmwPsQ26M1wA6bF1QrITiS7jZ
	j42qyqqLv0MswQlfvcRr5dl2mZnzXK2uQN9qhdGM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645207285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E/oG4DS8WEYXMFdrIcy0yc75ISM4Smxt5T5t+qbRiq4=;
	b=ZFruPUfnlCWNhdKmTtbDlmvmcsIQdGNAUGyexT7bo3Zk0ppZArQ2AAjTmaCpEQaS
	Jc3BSI0YwfNTDsdRMqrlezqk4WmIenfvI+NTaDx22cxFqQqxTQmT8rigo+kf7LeYslj
	2XEQ5YS22G9e01OxlPmpDbutcdHFuoUWxLDId9Vo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0dfeecad-17967276-d40e-419c-bd24-5d252650c07e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad7683eb694676b6e0c8945d51b21efd9da1cc5313eda1dfcd31938b7474b265
Date: Fri, 18 Feb 2022 18:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645207284
