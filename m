Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC6DD299
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748782194; cv=none; b=muJj2AAJrii/ljIi+hRFxriU9KR3tiu7M0p2SnZlFHeCvw3csQd4HbPK4lj0iYEm/DuDQ8N4B0ILpAf4OfueUoTFoLrPczwkDy6VmGX5yVIPjMh0IUVLUnxCcNSCTG4gMVICX/VlIGGAlxAZiXvtpS6LfGZZ/59IeoY7YaEBiX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748782194; c=relaxed/simple;
	bh=SEWZrMPbx3znLewPe3KtTzT5nVo8QKUaBzlvMDxaiwM=;
	h=To:Subject:From:Message-Id:Date; b=OCVqkH6k5cvq0adreNukSsDIV8ZB0Ef7ntHhif0XLmH81bpY5sMddyNI3Zm17THCaJQUmNq0ec9uyJlXTifpHr7PTe22v5mIISc+qxjn5gaRabQHuOlC7E0+9ahsqsAclrBCHaXCWn+3LG+SkCG/a4gg3wb88YKqk0nuGq1tycU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKTy/I2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKTy/I2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A934CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748782193;
	bh=SEWZrMPbx3znLewPe3KtTzT5nVo8QKUaBzlvMDxaiwM=;
	h=To:Subject:From:Date:From;
	b=IKTy/I2s1jkbCSF+GEANH24lnIwwKVK8fOIuWN7OPFEtzrTm44ArrWVN1mU84PgHN
	 rKau+9XDV4B0OW+SdN4LM1IChnC8JcEyWLkYuFvVPHX+mAbWhxf6nHjuGlVbaGiV1G
	 jVVqj162EKVC5sA4/unHwmOaeDDqaIZcj+lXzw+Gi36R6/dwn25xGi15AJKhkCejuI
	 PGCwrrfwBIJkwwfDGuZ2EWk99qIm1wytsQ2OCiEVy3AQ8bRZIGxpeqkxDg0CQ1GQfH
	 iPEkfrzERQ9Jx/X7Vx7WfQ9tRGM/odnEWuJJWsF3KqfMTJ9X3TEgFQoNTVrot/N2Gz
	 rU/zJCSxbcHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5DC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174878219358.3156.18292957528224629454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b7a915547295ec619a76651474924b45973d91413e90953844a543a9e7257d
Date: Sun, 01 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748782193
