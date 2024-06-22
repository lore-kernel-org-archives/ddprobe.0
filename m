Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD0215E8B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719094943; cv=none; b=nRjO9bh7/m5qlZWJpEzsaZjTWE7w6M26+X6Ff0bOIMzy07/AjJ5Lrqi1w3ghOowGaaXSpaNKu0OY00nP12cP6XPFwSzrXAbYTQdb0JZKA4ALSLEyCVBI6tLVvt/k7U/PPryQArxsJlUFBBFgGmPh/QTJTELkpUK5TXixaRUREmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719094943; c=relaxed/simple;
	bh=hDbnvidan4Ckq27bL6rcKHbnLnJBhPMhuFhUDOLq1IU=;
	h=To:Subject:From:Message-Id:Date; b=Ol1qK0yyRC9LNJBU0TNVdGznaYRIwJL3XhQ2SQ653gu9hLUZYlCAfvAqtYo7/5f6wccHdL07hErgWLzA70bpOMjbnJX4Vk3EcNBwRk5aCW/SPZJ6yRfLXN1/EJMRpmslKiAAml3xR0CFov4b4f8RDjUal9W4JZE8x7b1Ix0Ekjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBV/C/4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBV/C/4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D251BC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719094942;
	bh=hDbnvidan4Ckq27bL6rcKHbnLnJBhPMhuFhUDOLq1IU=;
	h=To:Subject:From:Date:From;
	b=JBV/C/4uF9SQefRcRzhYYUwlis64QL93wKY4ixh2wV/kF2ZM6WUFxuvecOQ9MoEAf
	 Y/0TzMpncA1js3+PnbIyV1LHEmo/zSGVNoa9U1YsxRIisiZLvhR2wgfRo28x5rNmog
	 qA+giZTmuyC+YCfuA3ruN6ODQXe9R87quo5QPO+Tz4h+OE7xy8yyQpNanoR8mKdwJA
	 U2Y5WiBRM/Hqvfqfo0hrtfDIUHCr1iUXbfFTdWxfWpUsIS3LuUC0p+9R8QzDn+ehyZ
	 m/LiQWJN2FsH8CZAI6yZcfuvlBssGvcQ9oQ5x8kKjbMbfYJWi1AJo9dZlUtPthl5Cv
	 FrLF6wDvlkdhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE292C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 22:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171909494275.20914.4932542136519143846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97aa6d899cfbf2a666637076d17decb32715dd73472ca9460ac9cc616d849694
Date: Sat, 22 Jun 2024 22:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719094942
