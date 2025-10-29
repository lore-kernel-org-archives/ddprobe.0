Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3299D25CC4D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761759594; cv=none; b=SxRHphqALbj/a3FFtRtZDV4QemI24PcHQYLnmc6gh0+QV2Akc5m5Dl9DEHxJXoRdtbZLZ5la+xOOdIc2KLZdygXGhXVFA1zCT6hbNxo7xbUYVsCrUvFupCwVQofdOAbtLFxTV1dH5fkh3HFsZjmjcoFgmYewBA9CP9noJa2ysEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761759594; c=relaxed/simple;
	bh=/qrFNXEDSLQjgJTwmK+2hQtLMXu7VE3EbOACOQH/Ad8=;
	h=To:Subject:From:Message-Id:Date; b=uTKsIJDDcdGeNgasj7QWcuqspmwP9j7wjVGLWQL3LjumtMcxYHss0apsONherT4go4fzQZcvaisEyHs63/wB1+9dufBaa9pzmOVZzsqfZTVI2D/TGHsmf1k7cEo9HlEB/xE0+1zrFzu5ZozdwKSfvRa4YQ2aa4b1ykpO8sQKTl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gx3WNwuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gx3WNwuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F729C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761759593;
	bh=/qrFNXEDSLQjgJTwmK+2hQtLMXu7VE3EbOACOQH/Ad8=;
	h=To:Subject:From:Date:From;
	b=gx3WNwuJdk46ePx7O96m5+BkyXwoE3VjegYPHQ8w+c5gZxNGa4y/CWyT8BID4UCfn
	 YUNXp7ab26jeOM13OSvKJVT/muE9kELOsU6uSS2gGjjTtbHKhEUogW1HnYk1FxWrfv
	 cOdMPCyh8+nyRZ6Lys/7byhVW4Bb2X6N6CqPZrnsp78WwiyRdBGe9EaV4zvxCG0YeH
	 1QhaBNSYUbUpaOoA2Um9N5ymBDcUKbFczd3iXtb2Af31q8a0AOsW/KrI8CsD0dqfIT
	 NwA8ayWlk1RPYFzzksSeqdhKISkOpK6YjXTKww5GcE3TISKdJggTGnDyEX99v8vUit
	 RixdHiuSMAJqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90326CCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176175959358.20301.2614475236678125238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518e925eb8e7b8d180ad724e8227e432150cccffc745db514ebab1ced4917471
Date: Wed, 29 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761759593
