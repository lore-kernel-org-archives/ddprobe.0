Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D103D9043
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772124894; cv=none; b=Ra5FXZHpbk8CB8aUlnonetmTzrorwiVv2jIgYbnRnKAPQVhzey6ewQOKnTGOl8KBR87qwmoapLGk14NoBSa5Zk88DSGGIy+zp4t/lRdiWx/yWeU7AnDy+dCgJNf2PP4eKPyxqy4l+KJ+oUVWIbQEmZZEY/AjTFZvz7gs4Px/CNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772124894; c=relaxed/simple;
	bh=DSlGwyZbZRIrwQzWSLnOyM7j8mFL4B7p5RkvHGkflVo=;
	h=To:Subject:From:Message-Id:Date; b=VNtqjOI7KmfUWimt4/d2zxFHPPDZmJUqJn6MUMxnAvB7uYlmWfpqRR3vKKfa5wDc+neDPXDxUHwIgYLz/kZCFaDYx9Ic8Zn5fm6bnEP1+N9IntCB1J9NmOp1c90oLuix5BFPrKZB1X4nV/B4dPJFTNcl1WL+kp+sAGzg+s7WOC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+X18uxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+X18uxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6610C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772124893;
	bh=DSlGwyZbZRIrwQzWSLnOyM7j8mFL4B7p5RkvHGkflVo=;
	h=To:Subject:From:Date:From;
	b=R+X18uxvXlkcTWLeRpdi5BYSP+bng6YPmUSb3LxW/hS12kPF+/IlTbFosdmDZu9Ao
	 Hgl2D+0hG3OJAMQtZOk5v+uIYNpZaOU9l3ILqBmMQwndCLuMkEIgzvvg5nW3TW3gyP
	 qWrzlO5hZclkcvDutzdGhug9Xe14WTtFrhus7R+1vGw6YvJm2MZkxpNmotE1cOmbdj
	 a9YBNl0uVedViDWeDiC9DYZYkS/0tQXJ2cKvssiKlXWDe7GBUCJUbfAlvqLwhJaJ9I
	 wbGvlPMZXvVqLH7aGi8N22EjLIMbXLCXRymt5B+Y6gDqwMUrwWAO5x+Z3jVqYx/YfO
	 4Y9ohxSpEM5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F5FD8FD8
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212489359.4825.12716373613401809587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27f736635d0b80999b8d0b406e6e554e944507cf2a3ba8356ae938ad480c6a9
Date: Thu, 26 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772124893
