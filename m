Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615743D66
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 15:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713712823; cv=none; b=oeMxU5Vjrdv7/nuJ+6By0xILw57v1lFVntyakXj2y6wLNr2mGSkTgr609LNDiswc5lTzHZIHCNQ4i9SOb/lHK3UI+93vX/Wjxt+VGcC24l8+o/XOHcA3+MbR/JJu0vFLtOcF79vH7nsOE/zMS8YJ5wbhQOLqwdytFogO1by0wZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713712823; c=relaxed/simple;
	bh=4545zWO7ge1hKbBw5xlPAg4LK2cxEzngJCxKnFAcH5M=;
	h=To:Subject:From:Message-Id:Date; b=j9/9pTMw0Hauotm3e0z+2PkhSPUknuWq2nKwoTyrD9UtApNdp7Niy1DI+A4RbLsJ2zmJhGBDl+92q0Sj/GqvbYvT2PUh3DX+m+HP1SYBJy9edi8c0HFc1I6vgtaw78Cnq4QFD3T64BxZVhqD72y1ZEdAqWYOrLPq10Eb4jJ0VG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHBZm4EB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHBZm4EB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3198C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 15:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713712822;
	bh=4545zWO7ge1hKbBw5xlPAg4LK2cxEzngJCxKnFAcH5M=;
	h=To:Subject:From:Date:From;
	b=aHBZm4EBpBbM2/FjrTVP6P+MpoqfC1i0zDHIZ7XYJQvz22LXeDwitSY26ysDZG+4W
	 GZCO+gRJs1DZFMwVYCS0G7G62qFauq3uLwOTHHJZwUdSqDxvonhJZ1yVNjbQu7J/wj
	 Ihe6X/kP+35f6XBIXZZpsFnxaTfPWXp4PUXs5riBmSj4RVPg3T2bFfzy5wrl+uIH/6
	 p2WekBrzbiANB4wTDAkxL1BdOmyfpid+etTnRCLw5zTHCNn7Cx9sOF6UnjnBBUGCmg
	 3e8+Fq8iwOH2wCiK4aSPe8EjnSaS0VVfBZH7Uo+4WmQliTRc4o0DTPo0ppNj1iTYzZ
	 7bp6zsuIsNMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C645AC4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 15:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171371282278.22719.26530818238102265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1cba00fc3ba22eddeade960b04e5135e8228323729959bd15c1e7da1b69aa1
Date: Sun, 21 Apr 2024 15:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713712822
