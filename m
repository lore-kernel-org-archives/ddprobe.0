Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1092B605A0
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707609497; cv=none; b=rIUvCqXZbwrOP6du2P/UDkOkAVFEKNTZMTdFsEEO672D8m/72U53/Fe420iw0EquMoZNr4VunRypNosE9Xdn3Ud2Z4B2EPTyO5VsiUYqhzCMIzSr5HuMErssVLmyRpByVrDz9F7hq0KxVhHvjysWB4mVTOh8lRkLt26b3DqfRIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707609497; c=relaxed/simple;
	bh=yJkgz0UkqOTovT4KLKQasXwRKq/oQ/Rt4T03F/JP1l0=;
	h=To:Subject:From:Message-Id:Date; b=PsoVNbmG0hu+bxGcSYVDmaNc3gU8/TER9l47F/t+xaFVIiplVy2r8UTaAe6lePB0d2+743Zkz+yOdIQAuG1UE+vtyz5iN+5yAo4O9wDcvF/RiCzL8MWKUpMunvs865LNzaQKfYqKaSZkHqJPl7JxxEBt4IprM5wWxOAjq4AZAiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4/S4osv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4/S4osv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815C8C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707609496;
	bh=yJkgz0UkqOTovT4KLKQasXwRKq/oQ/Rt4T03F/JP1l0=;
	h=To:Subject:From:Date:From;
	b=e4/S4osvDT3gNZusc1JDkJGbTT0Oi6mdQM46o2/bISbSmO/DYvM3oeONvwyzr0uGM
	 SPnGrmbUe5HNkBfoiMOAr4TaeEZCpbS6sXfoTx1XnjgNrBsgaca1PJ9BZFJkJt7gz9
	 PD5wZzzkxr8PlWwLG/GL3CoJcXN8GN8Pbi5CIyzsvPsLNuHCJWIPsiN0PiyAcjuO6n
	 8dVt/pKKyYZ7o9gibFjbe/PyhKcehisaTqHZWz0YeHiE0R2JgtbNE3h1mP08AWYX7S
	 FTJTXCkRc4TbAsRH8rYT3hZKErrb5iTey1Avo3U+ETG6na7O6c/xHGtKR16Vm7DR9+
	 gqZHROaIG7h6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666F4C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170760949640.28890.2922970401606231532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e973bff51921392a0ae31dd5703d315f5040e9caac489d41d2099e800dd5400
Date: Sat, 10 Feb 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707609496
