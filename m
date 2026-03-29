Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE8B2E7F3E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774799693; cv=none; b=t/zSUqw906W5WeBbMyd8cUO3d+P/A637kyIV3EB6HPdaPTHLjuIhDuIduLtM97fgQdUq+ViOOSOfvUabEy6KxuF3VzTrYrYzMrVgUTPoSzRYWqFVKIv8oIRYugRickBG023mQXh8+tDrhaHpILBAEdv6/27cwuIFtSMbK1EGMpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774799693; c=relaxed/simple;
	bh=SuPpXKyKrDwhIOHwjRdQDO+lg2qZxd9+IoO4waQm6uA=;
	h=To:Subject:From:Message-Id:Date; b=DIsYU2H/aJMEjW87mR3vMxsgD56tDaWsEhdlbKQXT9SqdEkL1dHZOgx+i1thZOGr4H0JFhb9/LJCEOhy2hzKNDbBJq1Dl6O3XRcdFygoJ9N3WIx4gUyofIUYeoHsNLtAJOBuopUBelno4DkmUKJbDYqcePKow9qIlt3Rdbq67Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyNLLgyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyNLLgyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02B8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774799693;
	bh=SuPpXKyKrDwhIOHwjRdQDO+lg2qZxd9+IoO4waQm6uA=;
	h=To:Subject:From:Date:From;
	b=KyNLLgyPh07HoJH7Q9LlJOmLP3oJ163Ld4a88k9TJ4GxnWHpdusCSBogyw1tVgOg8
	 Fv3rswLCtAVgv/Q4deOaVJCfDWPHOj3P1s2BCgVS8f+otq/ytw3lQV9uM8S6RVG16y
	 o5XWh8bQueoHJHbNpONzmfK0yEAJffW+9IkpTbvx+DxEZU9jbUa2wAMb+OJsZkkK3/
	 3R/fJh3V94XvCTRq3NHP9BDif3+FNtswQl+qTewBHCcfZf5wnW1SRZDfL1G673xlpS
	 kZ+GhT8diYd5U0aMjrIQToF1svAuEIv5TG13M7vT1FOSUX0Xb35xRcosJTH5ysrqN7
	 p12/7Xci4DtPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2BF3D5FB
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479969358.20266.5812157923267386963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d24852d0dd6fa6d62a094f842e51166c40d44e00886e2e980e1457fc68e5a38
Date: Sun, 29 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774799693
