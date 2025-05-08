Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298171E4BE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746712794; cv=none; b=E3P6Bk4Ks36d5zWYJLUuFnzrYTRbonlF/BvJuFlZcOW7G8wg+JFLJk5TT+CxHksowP7QSHu+32eAy24YrV2uh3ZzHTEdz7DdzJCJtNcwTDt8BGuNGx7gabPWYCQN88ePB5Htax78SIsZHwiFwvEbnN032uY8mtzPm+2DXG4zQzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746712794; c=relaxed/simple;
	bh=3kxEqXmhRWEC2ie84sq8yfTdzq0JfqY6UxucA61EbiU=;
	h=To:Subject:From:Message-Id:Date; b=bL76OUL3N72tMAXzSPL/6I2Txr1xZ/yXNO1BVJZWVhHCPSCqjeDUOl1a5Zs8E2N+R0aDhf/MYTdh8qHSGLd75Xx7qkqLtOCq15M0MkR6HYVNIxJilJ/ew8KM2Y24D1kS1XtqdcJaoBrvR1EkngS3ZG99+RNYx+v3BbmqgAcMi5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDpmQJIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDpmQJIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBB1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746712793;
	bh=3kxEqXmhRWEC2ie84sq8yfTdzq0JfqY6UxucA61EbiU=;
	h=To:Subject:From:Date:From;
	b=CDpmQJIJ9uIb0/Heye+Qs2qrSUCZ80WhiSQKlqfB2SPDRraolLnQVEMvS7rDJTJGn
	 VidmCHSZKuVvSENTfnq06/GPpb84GS2I8numCxwD6Wngf25GO46AsHXwitT1rG99iH
	 sdNhkjd39vloGNr/kdtRtwpmIbpBq2KJ8deUW7Y8l3hUfqsl3Eo6PIgvG6BzKxYQxl
	 g0/K3hHOFCf8dRQwpTB8l/RnOZAIuMCSbXA8f7jNlff6RR8fFu8jXOFywzNq8b6Hcx
	 bg8gTNMFbSeu1Ymhkq94MOCu/kiEPM0/+H5m3n7tncHtIsp2aiAbBfP5rwBXtEH5WK
	 LTa5D4f23obWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E82AC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174671279357.21543.314421341311209454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a365013ba372cf0645fe2c604eec504ca1c480b2713b14baca0f067b4c2ea15
Date: Thu, 08 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746712793
