Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220E837BE85
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774143894; cv=none; b=WQzTGGuXyvHggaoYMlwIALPy4C3jEvlT+QI4oVUPqvWbA7QFueI84SwZWAnOVC7yfXUW4KuvFDLKxQzJP13wIWAxr5pqp79w/IF0crg6X/eTFakQ5na9ef4M5YEPEQZB7QT0HrzKUcEcNI1xWALpQ8ypCTLCOIiLSO7QzUQQCds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774143894; c=relaxed/simple;
	bh=uLkd40BzSWQ6gD2D+6cN9P7t/0H8i1m6U8k+kSK6PE0=;
	h=To:Subject:From:Message-Id:Date; b=MKUtrLvwTE2kq1AzMNpJVxh/sa/1IPojJEwSq7Agju4pEoi+iLW0CkhYqpIb3MDxDWFqwm7Rj6IPbE79QHvXHeqyCtEO+0u1CljDKpaXV6FkEX1Oq5z9VsHbBYPpzL7MoXpOe8QaKxYDvDe3Cf3dqybpnBJwXquO06a9/Kp0C7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpLhdgzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpLhdgzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C6C19421
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774143893;
	bh=uLkd40BzSWQ6gD2D+6cN9P7t/0H8i1m6U8k+kSK6PE0=;
	h=To:Subject:From:Date:From;
	b=KpLhdgzjIpvuKQ/0bKINSjeye86mdJWejMwHxfrNRoKPU1ui7XWBy1tLDBo1Xy16G
	 OcOqn7o1QaAC0TT7HIpE2NFwRPaWLRsCPlD1iCbhE45xQoQjlGnWZ3I1C2RElGBY5O
	 Ng7SIqBiGT/8T9IKwVhbVWYOGzNikftj2kTahRc8qvfd4rrWEknrFkBsldPH4Ol54b
	 bqIFtPFVqD52BOg64jY8GaNGNgM8zRDfg2FRoW88o8Imzv38NH1Q33qHnUvAiKPTUQ
	 L2hUL7ODcfkXEUZUSwA+pEmtWOHUaKBH2VFgwAru1nz8sVtbT/KneeNqD6zGxSlsEr
	 +i9mxeDQ9UweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93563109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414389357.28093.16573785614032940604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54cfd3e85dce747f427713557cb8f74156eb03b943fffdf889d2b09215a98eb9
Date: Sun, 22 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774143893
