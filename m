Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21136195808
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749668394; cv=none; b=HdZcB581RsMak6o5+ul5oZH9MWT0xekUcNKtQ2jf8ilKk8VWEC8nIVh9PxJzxQflKly0Bx1uB2zMbxWzjoZXPWGAAbXoL8Qr/wS8ua0ybDHT2CoNayuAY6/3rDX6zz12pAwD1+O/ppP6Sq549xKctzeNEP5ugNUo62kDRGturAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749668394; c=relaxed/simple;
	bh=AyVKqwsAUuPZnCe4T3IhY+qMCcKjD8kKD6mMGmhVdGo=;
	h=To:Subject:From:Message-Id:Date; b=BcwDEVw2TtfoHEeb1ACfB7Nnz7NdlrkKuDWXFeL3+6IR1DniHolJh7CpunfakEVEPN/YPtfESAXkfQVm8iWHPkBg/23yo61xU6CJnkb7/h9bS8qGhykTUQ6/kzxLeKoylvE5CECGV44nmqxyst9/lNGv+NDhxuPp70+BFmeLyC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEHF5Ri7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEHF5Ri7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BFDC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749668393;
	bh=AyVKqwsAUuPZnCe4T3IhY+qMCcKjD8kKD6mMGmhVdGo=;
	h=To:Subject:From:Date:From;
	b=BEHF5Ri7UbFy4aHFHTgYB+k409ATxM7bEe0yhjUQa++Do1x5CdrEyHGA8eCGJTzvM
	 a4GS95ns7baROQVPRTc2Uzn7XL4QwWT4ujh30fzvRHv2wQhV7qftQxAGHmd8E9xGyx
	 vqiKpsFqGVmDa5B0kbfxY/cAKAzeTeV2tX/7iWCpmz5jZ8vnS00muZr1J61RW4xfX/
	 EHMdEwWSahLbn/gKayxPcNyICc6A1l5Nh3hW0v98wIJGDkfKvLX2CKVToCeXOGpguL
	 rwbgXF1ReTFIAwYPp8Z/knxfgY67zOsKkK908Y+o9Sl1zGNupT4qwz5QsWwlfAmsL4
	 xrAL6JRBexuLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F9C7113E
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174966839357.3813.6163897731449914787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16038a2120570e58e28014c4e45e0eb411944fa7dececa32a3a8a418ad3b29df
Date: Wed, 11 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749668393
