Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D62145B25
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721418954; cv=none; b=qY0PxNeQ5L+9vVe/JgU2xagDv3PFKJJaQOXMooIzWy+28WK7rhrqoysmdx1DAwF9rpJ3d9pZR4bRMYpoxB+zABilQPihrpKxwpdrRMIk6kdCRM3+DieIPH5nraEg8L9+0WcEoSeu24jgPoGr6PloiAj7zPJ8T00rsbfUxmijroc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721418954; c=relaxed/simple;
	bh=MrKfscTVFHKaCRFzlAs6ZRnYBpUmIe8EUAIh8T03OEs=;
	h=To:Subject:From:Message-Id:Date; b=frmf6WYzLoOx6rhgXUIPJ/c+GNO4u74RN9rSZ3/7YyuoCk57YmGlVHScSmsSSxqSkqehRwcqLt1GMuQlRK3i8gGYCfFsUZ5Bpfqwk2s8N2c6B+65BxuXtVQPuho8NVvhJLT9VcSlYaAB8mJ3rhHcGhdPPzYKQ77MPX6zXDzzUvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JatLGPCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JatLGPCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA23FC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721418953;
	bh=MrKfscTVFHKaCRFzlAs6ZRnYBpUmIe8EUAIh8T03OEs=;
	h=To:Subject:From:Date:From;
	b=JatLGPCTpNMvpknXTvD1cCmSWd0jIjNADQjIWY7FnQ/KrrXBmK2rAVpYyeRONSvIm
	 xk8fMEyzQ3gzWo/fGvP5uGdvnBbo3r9zKflkJEjPDZW8IfGN7WDfP4TzOSEDcTa7kh
	 b4KuXFr766qb4gXmSp8+xKhxyfL0a5FMsbcnUUp6epBg1qLnn8NYXhmz9B8jtwzIxC
	 pc5MQ4BPFDGoFg4SSi/rRTPo1OqeEPhkjqmgQCW+gb7Th6DssOrTGNVzJqtFe+8DBb
	 krdXxEV4IzOFyERRttexeKQ1Ao7Uz2xyyet/6EytVcG3f1gKQXhOfBuBwRWOXhQclO
	 sGdzGk/maebBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF3C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172141895359.32320.3911667904315839220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab62ce4d33c492ab612d40715b6bd9864632a157de0824eb7577358cae985d8
Date: Fri, 19 Jul 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721418953
