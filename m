Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FF5883F
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775962054; cv=none; b=QyJlzPZyRDOgAU34f5Ut3aW8QgJcyvf9ISLManpGsbInBM0yRThvQHAxxDZEsKh5Ybk90vIu68NqWhx6U83qBD2i8u7a2qlIdo1bgCpenF6hWxhr8taIG1T1t0/03HUOHKo1uSK3olha/OkU8eZPl+2oGjEoM5bY2YSXvXOGNg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775962054; c=relaxed/simple;
	bh=eh9xTMcMeIuds6yv6NsNAz3j3haB/Q+zK0fO+zqLMcI=;
	h=To:Subject:From:Message-Id:Date; b=ZLxZ0auDFogubzLSv1WvrNSMW/c2A8QCJOX34slldZwvfNERuXzzE4niaJeL6jzYsH030QCZztSJ+IeO4qGNvx8LL9kgS+UPBfljf68e8QIxW8QW14GR7oFIWgjzBNVVxs5BFbfzaIQdyUt9CeQKS5m4GT6HrzJcNYHoA/KTH4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed4ozX8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed4ozX8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25BBC116C6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775962053;
	bh=eh9xTMcMeIuds6yv6NsNAz3j3haB/Q+zK0fO+zqLMcI=;
	h=To:Subject:From:Date:From;
	b=ed4ozX8Hwg3symPOsCFl1mJwD6jNmE1U+cG65XrM3warUlQBXjsW1IfHPOK19+GjV
	 43OX3mrYwV7RwlRHvDLM7QOnOhMguM93zj0mzf6ETJE0TpdLVE13nJmrIa85gq/HK/
	 YSBs7lMBJX6xCP3+0lJaQVX776adZNwZixUXOHpCrZQYYMXnboHDZD2md4MQTuSV6M
	 uQGv8Gp790m5ssVd97F7XZR2sfObrcrjQYCv9Amwy8ig8Z233xNb7hctfXlxlBxWMK
	 RZxCIUhXIBULSzFgaoF8yIp3dKl5+xEsLWEmzrMw4girK1ZFXBpQ+hcyAHqkhidCVu
	 e92eqoIHufmtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BBEF3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 02:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596205369.28944.3462464404787171598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37af3e324938ae95dc0e7051c04a54c47cea643632220daa8ef3b83f16e1ee09
Date: Sun, 12 Apr 2026 02:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775962053
