Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAB133938A
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786902034; cv=none; b=XTJcaWDXsy1fEpS/N41fGCvCuZxb1e5Mn1S14VHwyBO0fN9ro9Q2wlvzF+d7k0eiBYSlTU7CvD4Odayj/GuUmXz8nrarxxY7d2KtK23LDQ2QmQWYw8J2O3SvtN3B992hXHICQokImmf7qM56oxmhAIKvEd/q/xuEcuXpoR5jBqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786902034; c=relaxed/simple;
	bh=wC2c0SKYuQKMN9Xcp+mxZxMmtgdTz8+U5TP/DPRvcQw=;
	h=To:Subject:From:Message-Id:Date; b=fsQ00fAwOgLG68B6HJWOIu+EJHSwRwemsKO+8dgYhwhfVItuGV7nK9jZkwoH89zzymA8nK+0v1xca1D00Qq/j6BeSFXHkHpJRCoJGoP648x0LLT+Mc7vi31e1UiLlXfcD5ax1X6unLJ0tZJ0aRSjq8foDtHCnhyTGpoZCPIZ5cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5BxhFuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5BxhFuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5072C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786902033;
	bh=wC2c0SKYuQKMN9Xcp+mxZxMmtgdTz8+U5TP/DPRvcQw=;
	h=To:Subject:From:Date:From;
	b=S5BxhFuqcU70BAeVNUx5AgJgUhvOcA8KgAro1vZPZLR2SPMwUpOmB1YhdH2Gm8Vlw
	 0UelsC63RBmumzYjqhJAvi4FSDc9kPVZaAWMsbTMm8NyaQqBtZrYElWH1VubHO/tnP
	 9NDUPufVj/OnAOJ7ws+zTEacvT9WWzOllS0FTP3kV8OYcA0TYUvXp3t7hepPjUyJlJ
	 29NUkveXcHQofUugNBGem6We1NEs/GpkzHxB8yaZJx8NU+OMUSs6LgbfkJgMl4/Pf1
	 y+xIOr+at83mgXB6WgcRb/svrtuzKxsWHUKS4ASp+07qG4wjxQf06clf8PBfxTMIA0
	 xeMTNRIBMk5lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7CEC5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690203368.4931.4554814748336188377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545f59d546a498750b553dc42e1c629f02375f35a22df836f009de8c74f058b6
Date: Sun, 16 Aug 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786902033
