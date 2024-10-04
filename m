Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0E21D5AD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728022554; cv=none; b=L1kHduwatEikwbh58czdHYu14+ozokzDOWfd8cF1hQPRT1Y1bJWg56CgHxi4s1p2Fus62IHbkn0k5GE/5qiGQj6PJKJjrZLY92OO0RWmxjem9jaNQPlXjeiAKXQr/cie0yN6zxJJFDc4uG94OfWJnyQMTJKdxTq6T7eurhBC4OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728022554; c=relaxed/simple;
	bh=okpdxGmldY+2IydYxf9xzW1AibiOX17ZRqHkbZxV5G8=;
	h=To:Subject:From:Message-Id:Date; b=SrXWV2s5w+qPoL3LnG9A2T+dN4lmYdoAYlSY05FtnE+UvSx9CZKl7sHq134U0Ps6PzMsUox5js6w+UDNfy5JHhWTpHOOVQUiisJr+aCFcZjW1u8XLSRZdw1ALSWIF1M/OER/b9aFuG6jVi5K/+6hjGgQK88mmxpLQ8bMwxg/qvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkaB2yYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkaB2yYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B657FC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728022553;
	bh=okpdxGmldY+2IydYxf9xzW1AibiOX17ZRqHkbZxV5G8=;
	h=To:Subject:From:Date:From;
	b=rkaB2yYCoGALdG+FmfebzXldXqzAaPXaieQDfKqfimYEo7LubvcwO3zn3L8LrxkU3
	 pfZBB7eE92isttlr9KBs07CjXLjik1L8Y/SIoKdIJXCQWHdjUYzam0wFjBHwt5uHLY
	 TXKf6Ckgg5ghAjxm4FLU70Vu3bPCWxdrLbamJk8QvT5dz95MvJ73fJKFhmDR1S3TBz
	 yVnv1eHxBdziI42SrZdO4LGemnjfkIzOdX4qZ0HpJSGmDNoduvb0svMPkSpgGYwmdV
	 1wlFDTCo6gqdIsINDtiKcfRdjMrarCL5as9FZnwbwR4DuJGUAPqmgZohGaS/nj3dWt
	 Te/xAUa6SBE5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9922FCFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172802255361.13493.7944550787023418560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d801a9e3bb0bee9f770d7dc5caee288ab684447fff43a897935cb5d884358c
Date: Fri, 04 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728022553
