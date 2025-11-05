Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB81722F76F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762312793; cv=none; b=gFCKRC/UgL5+S5vr97CPdVlUfozo+fGkbvRk1SQpEJvxle/3bTgPTISc27xOKn5SKdpSvCYh0IsWyqFOv2qjt5P+0BZLxnVQle7r6tL3APceF+kdFqNtO6PdMkR+ePb9fEfRk3oRB3kKGMXQNBGaVnxUNTzAeWg8Ts97eRDmQfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762312793; c=relaxed/simple;
	bh=aAnI9LR24FCHaExxQMi9hOy8K04eUam5rCZZc7RoGRw=;
	h=To:Subject:From:Message-Id:Date; b=jRSMpjp+Bd1fO8cShSpS/Qd2PHYKBNpk9cfE+cDXxorjLdyl8/YIzooRQGOvBvsuA71twZcCQeNVsURD71FvvAtCEMs5DAkyJM3Rekk5zvLPI3XZ3f7hlbXmmWCguxkB8xzwAN1aeTUKFX8XM+OFfvM+ipAzLXBOpY8imyKzUyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcv6mqRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcv6mqRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18E7C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762312793;
	bh=aAnI9LR24FCHaExxQMi9hOy8K04eUam5rCZZc7RoGRw=;
	h=To:Subject:From:Date:From;
	b=gcv6mqRzwH1AzJbtQnXsGV1+X4MMnzFroSqLaHs2fzRlXiZiXuPOPwuEfn85TU5ll
	 7r+vR82rq7unfs5ZLfKFyfM5VhlaL+upY4U0nYezG9KUn/I5bByPNCm/sqhjzt/mV/
	 4HFdP0am+Q/iVTSQ0oy0Yx3xj93FkAOkS+0HXylg1nHsRoRF1gCLnOHF8fEHUvViJy
	 f7Tt5CpYatMjRQCJkT1E+C34gdhgqrZ2MZs7YTTg1IAgdvE6iwh363uNGxHHgqgIk6
	 uBt7BdVuKziuOBAViqtFW4N57kKtCts8b51z5T1gELu2PzCaFZ5CNQvRxjIiR1hV5u
	 xvKwSTc8pEkcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE3CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231279359.10582.16158089914126814989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bdcc35984baad314ac5371220fbeace381213ae4d5fde53e5c51635971de8f
Date: Wed, 05 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762312793
