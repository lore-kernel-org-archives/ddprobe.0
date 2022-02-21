Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2EC220E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645414285;
	h=To:Subject:From:Message-Id:Date;
	bh=KyQ0qQjwkjBvs8hMU+YI+m0N9I/i2ImSkZI1/KAj+94=;
	b=c68r7wbJd1IPKdPMuHtD6jOXuxDGu5swFhnjPRoK0ITBt1GR5ZmWRBr4REdLxmW6
	VQNlfxLdr89Ia7yZcm4NeUIP8OfgkIUHJc0ti5ZH8d+873mKTOW6bmzEupUAmNoV1Aj
	fRGlepHq2UYwPJ6KIaRXzRMsfe/+aaTNUKZyqUjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645414285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KyQ0qQjwkjBvs8hMU+YI+m0N9I/i2ImSkZI1/KAj+94=;
	b=eYoK7eEju19QoP5iPWhvR+foH6TxiuDrJatH3k+WmoFMiZVsNNGfLmpSn9AS/bGC
	HGyXlsK+pUqt20IA1AUYzi2hBRW34K62NG6KO5BGBu3DTejWOzs6KyHLADIf8nCpqC3
	hcSHOxqExJb71X/gVRLaciAQzUcwVfKedL1sEEjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a557e43-3d65349d-c8c1-4b2e-840d-a2caf6437d48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c56f03d29d1189bc539b23941b4fdd5337cf916c90b7e07b0d699a6d83fd1214
Date: Mon, 21 Feb 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645414284
