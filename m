Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6476D2563
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659721852;
	h=To:Subject:From:Message-Id:Date;
	bh=f4gtlR4/FiMTFXWOQmlP54lkrVynwBjK2MLmZtJMErs=;
	b=bT1V8rpqFCDqlFfmbYP9hpF3gymnIxwH0QidWgzrTfLH4XWAOi27rZlGGmtkXbK0
	KR7oWFK2XsGPMKLJ/O7qgFAX9UgY8N1I8yU8QYfR21nHuCgI0OPrvxsjhD2z2w8vN0V
	2ft/YzVIYtnVwavS9cuO0H9qNnxCfRaTYj9uL7nU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659721852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f4gtlR4/FiMTFXWOQmlP54lkrVynwBjK2MLmZtJMErs=;
	b=bH0ViKzqhT4x2EQq0Om8FXa81cPmjTh4y0ecxPkGe5ZFz7ubKX9mB345eGR6AUZO
	C1b3Ga6nVKWZYLiy7Kj6MuV2UuilIuX9rf5VDwrHI1F25ky95DulmWeYXyyfXDvnyf8
	GUeyn+Ni1YbYLfJskijm8UO5/Yj15KukJYTmaMB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826f21a698-a6550d12-7908-4c8c-9e46-8fcf348a5a5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d887d1bd8a3bf74dc803e8f602b6344f6e8d339476db0d2f2820640862ce3e3
Date: Fri, 5 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659721852
