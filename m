Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA999749D
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VubloO90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81010C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698191896;
	bh=0Zhk9+4/mOVm6mzvlFC/7cfXtTXVfyfmrPaelhB0sGU=;
	h=To:Subject:From:Date:From;
	b=VubloO90AGHuAbj0KdkIXhY4TtK83fW6ZMMvoJu59UtnTH8lSmNPrvQYPBX4cmhgB
	 Kz4j7JPzjJ/aQq4s5rTKWI1Q1qtrEgrZm5VJFgC/SV3NSvo3p3lG+ZIA7/lASyuGEG
	 6DHYAK/UjGcHXKtw95bxydOj5s806EY/wPfr74iivCXlGBjpZOJJyIBVRCbjq2xlXl
	 jwhhwscGY3jC89tC8kZ4CRuI0vS5bqJhLkSOICajD76xw/FvuXLVoJlOQgXomgI+xn
	 YdWDMrGZw4zPMNRPnLUYVJIlgyDupHueKPJUXjM4B8IBjTyMxiTOuAE1qg60jLJEu3
	 oj4IKSdAFyCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647F1C25B48
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169819189640.22439.246847776532021644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cec61db5f3c0ff6d0de25a19bf1d103abc5b2fb71bc23a83a76af5b08fb121c1
Date: Tue, 24 Oct 2023 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698191896
