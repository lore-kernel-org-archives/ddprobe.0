Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0726B238D42
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759475994; cv=none; b=VfZXViGZkEW6stMBnVAPzGt+kCtgU8ZmV/aUoUDVDm0DFRz6Fm8KcAEabmSSAucce0ZCSMd5ba2Jn/TVrzndFnqWfKxTXg1htSy8TqOChGgE2agVyoWogsSbJWEZhptohR2qw8OEC+T1z/MktsMsn9sBPdxao+29X/HgWgCY+9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759475994; c=relaxed/simple;
	bh=YU21fTWe+MWDxF9zuwMedyEVW8SFcVLGgkKoeU9NqtQ=;
	h=To:Subject:From:Message-Id:Date; b=Ce8vPw3E3EwrYoT8QefEGFmvE6ndAqgsHVrqYzVVTasj0Qc6M3/8Z+MTb4vJ0a10o54oaOmheKt0m1Llh6Hko/aWsz5SoINP+pDsDEnz9lzLxdl6zg4GTiEnhEJ50/EaO+pCYi1nVQPjlad7p09yvWbAtlyK1girdBA9lLTLhhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvdRwPWA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvdRwPWA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E20DC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759475993;
	bh=YU21fTWe+MWDxF9zuwMedyEVW8SFcVLGgkKoeU9NqtQ=;
	h=To:Subject:From:Date:From;
	b=YvdRwPWAfwLX2w3oYd6kbC+9fjKuU8fmUBAzEk5Ig7y0Yg5kT39RLJrBcVmPRiLSp
	 wEgQloUEhihiQ9EJqjFKRkZMEPp/MNHfh7pUzzHe8NptmhY6qYMiHSIbhmY1kIthz+
	 y6CAxSfwFldrMTb2SYI55RpnWqfhO93M/zXgwVb2EYjmiG3WUqCuDX2gB4mbJZPchg
	 L65bq89QSAPhiQLggewlV78udTOIzD/uEnOTBzFike+94jOVCoB5WJSygryvf73Tt5
	 pWX4vvv4BPgOYHh6BOfPaaL9FmWcAh16e+GFUvwPCnBVOBRdOUwr/bkOuAJAgIKr6D
	 /JH7bRps/T0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BACCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947599358.17479.18108198819732645746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c999ca6e04ece62315866277541369a022815362b0d8a8eff18fc10373535243
Date: Fri, 03 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759475993
