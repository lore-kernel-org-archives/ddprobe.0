Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA05225D7
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748067594; cv=none; b=CsdsKORH3AojT40wUSr9R2JJHyt7DbRb680++xHZaxzQBqbH51bEgaL4lCXWcwgyyJygVGlPAeGTjUf7CX/+3ufD41E2U8aqCT5JCqqnWoDR2DFSyCHokImFgVDIe09k/IXwMlTg5A1Pxqhr0arItw9Dgji9gNg6jXyraHglWDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748067594; c=relaxed/simple;
	bh=vFCGDwFgv+aq9DNtAw2KPGXoewYBAKit53xCCy+FlzI=;
	h=To:Subject:From:Message-Id:Date; b=bZvOoGCiWcvOx1LfeMtKmQhVQcIONYE0tH8bMWM7HO0S0p4gYi9gv9AVJWfARAvnKiVQRfTIUhNtyEL2aKMdqWzZyuklds3+P4AXiogIkTAzzTnKbCqN0gQG4073Wli1MJ+lNjI4mWtTTm+I93yw66An3CSTlk2q23Zavod335w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBbbyWrZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBbbyWrZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B45C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748067593;
	bh=vFCGDwFgv+aq9DNtAw2KPGXoewYBAKit53xCCy+FlzI=;
	h=To:Subject:From:Date:From;
	b=tBbbyWrZgd69oCN+BrfI9/Tg3nZbNq2zNaFqk4ip0a+tm5T+AI/t1tb2ZIMS2ybeL
	 HQvPeKKdgAn5GJ4TB2E4GeCLIECpN2Yr6AEUQ/RtZinO3o6DgOLnYJ5HaCtviadn+k
	 iv7RkhNwv9F44gatukDOquKpVWivsNzn0RGUqwOZh/L/u51/at5oUuKdthYqmnPXxP
	 2MM+f/sMwkfUQNh5jtxzYIxG1Skyvkhp1KaeQWZfR+fzpOPltQEGgCxayj3Eb68lZs
	 xRQUOxFBV+svF62GkP4qO/Epc/oEglvEr6Q/0vEtLVyiTs3BOE0tWN4oQDFhZZ3Zk2
	 IuQBXRHYaCMvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92881C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806759357.7119.13696438481585942359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec1a92d3fd4878a157812f502007ec2a1f199413d091b40fc11793eb9a08adb
Date: Sat, 24 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748067593
