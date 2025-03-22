Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C7C8C1E
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742671795; cv=none; b=uHuqFVKUC0EY+DdMfFud0QNwnFpPpZUQr6DKP3iHmIcQacT0kU327mPmYFxZzGq1ljadFGT7cTuTX7hnZ9tSnVBuwOnZpuajUW6+RvIH0jeV8SzFU1PfU/GiiKP6qY1A9J2BOKEIKb3i/0vOkozuoOkHHc/7W7UsbCRjYKHON3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742671795; c=relaxed/simple;
	bh=x22kHMVff6jkwoX6kA2rdj4K7GKKEiIQKZWp33fUfRI=;
	h=To:Subject:From:Message-Id:Date; b=ktaKdGyFEl2yNuX4iQPE1trwS8QqG7TdhbIOFc+gp3smPMFotjPrwFeaOlJBMhp9c3D+d/HHOitf4MDIDTtZk/fc88hWl/MHJ2Mv7lYpjF8fixYGeSAAMmCR2IvTaVR21xQ4SRLakFF8egLnxrWQVC0e1zfdYua3zuxk9toOQdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZ5FS44l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZ5FS44l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5207C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742671793;
	bh=x22kHMVff6jkwoX6kA2rdj4K7GKKEiIQKZWp33fUfRI=;
	h=To:Subject:From:Date:From;
	b=PZ5FS44l7RqEovlMygPBml0lnh+VAcYHQZi3sxEEwv1EuPvXmu/U1ncZEZ7bZ5GGH
	 P3EfXqfPBE4EZK7ZdI0JlV5ptgvcoL91SV64PKu7XCX4ulofTksU7Jj4IyA9pqbmAx
	 XH56zN0V/hm9Q+PzmVK1It0Zx1vgHDaATaqv96c9O1YLw32UZIStiQA8rJcix4vC8a
	 ihvc/t19tQ4rkP+8OnzGhT4FR88NAMYxJIQ3XebDdUjGdFy8ZXBVi0XXAAqG8X1FXJ
	 +DBw8o8YXKltzayXVu9znb3M1hhcnhV1Bi9FESHAjkqcK6UtLaG6bc/YN62lFbI1VW
	 H7+AQAs4IfQ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B07AC35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267179359.6773.18333482763979385472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e9c3a1a4a0a6caa1be2c7dcd393605ec3b4a76b964c53c6ec836dc9fa12d26
Date: Sat, 22 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742671793
