Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2919F3EBF00
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771722294; cv=none; b=ZgGRphep/o5vwdWJJ1rN/kfatxSKsMHU9QOVhMpru3LvIosfXjjgjTKdwITZCkfujWMk58HBWzXo7djFIrwOADPleysNLwgVYV/pyLIIukrHfX2hrCay0kBt2kcPsf/eb++aQ8XHGlof2Hpy890wNZJMcmvlwzFgcIsjWr1uXsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771722294; c=relaxed/simple;
	bh=sud3GUFIDYi//dnlUm6yUMz7hx06+ShC4G/fnl+WVCQ=;
	h=To:Subject:From:Message-Id:Date; b=T1En6809fq7njDiZ8ivM3dEgCC7ZpwCbQWSbotF0NRE8yUcqqGj0eFDm2klRGXus4EjdvIwwkmlP3KvDyYcowqOZSwyE7xaIkQ+8ms1YvEZN/X33U6SXqTEuaa6Pcqoz8uGJx/6TkdxB9jOaEcg3m9vc+TXGWF4/SHfZdx+S3N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DFwvZS4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DFwvZS4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DD8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771722293;
	bh=sud3GUFIDYi//dnlUm6yUMz7hx06+ShC4G/fnl+WVCQ=;
	h=To:Subject:From:Date:From;
	b=DFwvZS4ded0FfijAeA9SDwM2mhxVLTK5YaJ3FzEdoOOiiTT4Qbe439i6LYbTYdYX6
	 V9mKRqo4wnlJ+tNWgv+Jm4w6VxvMZaKr0F0lphpG+yilD2TB9iCPs3cfTa7+2tgiG0
	 lN/nB0hFYPy5qCBYl5oGLB0gIHL5jaYk/JFk1t4f71D1YuaRJ+m9aE2tuw8KQ8AMK/
	 EKdHHBnGt1YLGwbEgalI1tofgOt3kBcVDCR2O2kMh436M8yNTu5h6MHUO/TMVwWnOS
	 pJkocO7GTNuG2/liq5XdQt/DhwDozE1lyIwxVzD8Jt03kdmY12TVUcE8mPqjpPBY9b
	 MJ7dEj+iMrlTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921EEC61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172229358.7880.11853907070545810125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57551cca189baabd8e0cc719b6237859ae7088f3b111ef405de1f2da6d65d947
Date: Sun, 22 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771722293
