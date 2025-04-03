Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23049219E4
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743715195; cv=none; b=Q1tzVopNYw01cvBYt36zUrBeqj8yDwGcbcP1RqK3ohzJNaGb1Wz4yKgk5q5SNwt/He6A7wXhgqfh+przbaJsdO0Q9chpwJ801NvaDIrB9VnLAhZA56mbsKPyhWaXCVF3ymKcqz0TuOUQDDYOZddxNilWDETqfvKZEl8tzjz/7/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743715195; c=relaxed/simple;
	bh=UUzuNlm3NO1XLU1Gg7KLz+2Ib3rUOR9AcmPxb+bmRmM=;
	h=To:Subject:From:Message-Id:Date; b=H4ZnEt5X/8D0wXCanQTNV/j5JRbWnfIhX8npOP43LACyRJA30xYDxejzLqnoqCh1KNMI2OG80mc2d9V7LgNf60/7EMUDjvJXpZ+jd4CcO8yw+ET1Tq6f6b9pRlRJgMQdtSB6dqoy/U4Gmw8WvO8F38fgzkUoD/5tdwuDkbrVqR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuY9HlgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuY9HlgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A067FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743715193;
	bh=UUzuNlm3NO1XLU1Gg7KLz+2Ib3rUOR9AcmPxb+bmRmM=;
	h=To:Subject:From:Date:From;
	b=AuY9HlgPXsY02oR9+0ghBfs3pPlZ6Mr5XF5FLhblZ9kcd4fCNRpVFw6rU0txXXXJC
	 C9qSL6eNCxmYg7gm+mLnWWCCEEGxdmqJ0mw9srYAAV/Q8CdecqAWcZ7xBaPB95KVSe
	 I+MeYT8Qve5Mmh6xt7YEDMcJpPsay2blnMq2qjoz7znOzCYdZGri1x465sy+Vcd9Gw
	 EQX38dc8dUoo1n6tm4JyKz08IBcBiDT6cg8KIfdncV8WROlBIpAC+qb2XrEJOThOZw
	 hzduyMiPR5Bwx/unLHdUyeDYYl0h9fzNO8COSEqUKCyn9nE9TunJOcN9eOVEGsbnjS
	 lEqAmXDWEIvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C68C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371519358.4571.14630314096256399487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd060d4bcc27fe1d057434a0109d084459cead336c089ef6c38ce159c0b55e50
Date: Thu, 03 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743715193
