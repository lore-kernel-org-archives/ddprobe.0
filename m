Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298F182D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736024754; cv=none; b=Kj3gV9Ucg69Kql2jI6ty2zsVXIj+1nrs90IQVUzYLuKWpRAPNBlvmiOY0QxqHeLOLqp3vycI3RbsN0HnMTxTbnigtqCxMKKt4cXm1I2c9RyMrmekt94D4oBVu3AJYv0SSOlctN+xFOdZ6g7Z+tTPGm1fvyLeoW6Hl9Yqgwt8OUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736024754; c=relaxed/simple;
	bh=D05JJwO7ynAKY0f4FSMClOHfmrgcV9LOnIN1RKGCJoY=;
	h=To:Subject:From:Message-Id:Date; b=UT3JaShCrWiyyNbiaBtZQdhhVvpk6O8ObU42E3XWZOVNrTlUGlyGFZ+R9KoO1R2oY1EArRemitYJmUW/7oYoHjIcH2FhkV0a2xMz7Br7QeLDuzPbY4b2pa6FYsk3zVNV7NMg0wUfgfce/M6iSVU6Cu1Y263185YU0vBvCfmQ0I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvjwOmXa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvjwOmXa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2E2C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736024753;
	bh=D05JJwO7ynAKY0f4FSMClOHfmrgcV9LOnIN1RKGCJoY=;
	h=To:Subject:From:Date:From;
	b=QvjwOmXa0J/IBamaxY5M0DsFuwHCDMpLopSisZ8I197F+EJBNf0CaVw4TVZIC3+go
	 l6NAelxq/r9rvZPfG1Fbfu0BMf5B4iTcbyScP9HZXfa/jFEb2ezJiuHpEALksri5hu
	 pGwiPlLdUmcyfvgVs2r+GcmQbrejh3MC9EpQmqL5PHtpRG4eyk6cDb56o9Vh8OENSG
	 SKSONCBP2m4nMaQn7H3dPp5+A02d72JgKL2KerKkTcFtDgj0LjkNWtvN16Tbcirvke
	 SaTRCsQF+HiRh1O8KVz+Se0A2wx/3C8cA/ujF5Dbd2umLJDq3fV32xItD62tLgqcaf
	 s/NRWT+/uosQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9480EE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602475360.25326.1068086900735447159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979dae8d1a9566740a93852682556a4d2fbfc9c80f1859feea4ad914d54f845d
Date: Sat, 04 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736024753
