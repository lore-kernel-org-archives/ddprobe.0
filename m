Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F551DE4DB
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743436194; cv=none; b=ImPTmbzpNe8XVoumcxxroaC88JzbC4nSr4lBthPAmQN3OaimCy2Tl/4ztGBGmr/0f0cLnXW8opB93LZjFZaPi98kzWJhLzGd8JXMFpd4Zek51pSD6ZEM1E9YLF1iHWzZyoaiFpJyIQR5Xu7+RvpAsaM2qQw8eC8XdZjMmblB1bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743436194; c=relaxed/simple;
	bh=zM71/tAfu1Kx137zpLqZ2lB1EyC4WzVJh+aISfF9jbo=;
	h=To:Subject:From:Message-Id:Date; b=AgE9qCeYXLc1k94LwxtPTL3hOn/PD/SgGx0RgZ20VDa9Dtg48hnFKdRi3abkF6GgSwuXxtZiOZ51aOv4zc2x2bSaGTfnNZV5RLvbToiXoebzW6oQ1A8ViKQaJzmH3eNKJS2se8w8Aixs+H66rJhFiJATpvDfOIQ64P4ArGZteVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8pyFf8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8pyFf8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85B5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743436193;
	bh=zM71/tAfu1Kx137zpLqZ2lB1EyC4WzVJh+aISfF9jbo=;
	h=To:Subject:From:Date:From;
	b=X8pyFf8jhZQ2duWNiy3YydwIZ2yiBSoMl1nG5Q7Xrb75kpP/IslwyMqQLuzIHqp1W
	 Qutc6o+5UZqvhaf1CYZRIgRoWOEjWoah97iqOsN6Fnr47Ms55IP1E5hXysmswuyLUY
	 9VuqJ+FM3stM/cbce/CGl7jm78STZBv4vFv0hxvPMgLlm25XaB29Ks6Qiv+GdD2upj
	 M084pGkZx3JRjyBHGhyufEx0A+Ri97Nd5zL/C4WRvJFHxqkt1izC+EMEaHiKONb8C1
	 vl21B2x+1duY4p15AuJaVF6QRC07FxcqmpgnYOHc/B04FyaN5qHLHMzaGlHYSHfkHY
	 /9CbWzswyF11A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97327C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343619360.8245.15603697169684476913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb381e3b0213c6f7290255432c8f982a6fb6397dfc42c6ad6f79f30f1d6180b4
Date: Mon, 31 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743436193
