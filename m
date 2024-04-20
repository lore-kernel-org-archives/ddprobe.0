Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A09120309
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713620423; cv=none; b=INuIfLUoPL6DAu+vTBuVnKS9jfad9iG9G4WjmwMxAuhHA7Frxi1VT6krUvBbSrQZjQqMNTx2oTAytK0LjbNWeGhU4STNXYWbyEKkL6MZZyYZ24IevMQ9oPYQTKVvgKaNtKexLpsPg6aLu6JhQMhSJxgTC5R80H26tT4p74VPKoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713620423; c=relaxed/simple;
	bh=upow67vCfBgdjPg+Znj1MsZebPiZwY73sVKv0qRtdBI=;
	h=To:Subject:From:Message-Id:Date; b=f3DzuMvt+xnH53M8xAkQcc1/NPTzLC6PZzAn3oFdohy3tr1uGRYoO7bLAujD4whe/W2Pxy0Q7kGsrPOxsNE3oFNDFYOjhu0o5ze5dS+Hmlxh5WM+RzAkqhX0oQikGooKd7sRSqj9iwu89VyVOnY9Ekh4ONDRwzr9IJHmh5hAtxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukMFJKNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukMFJKNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E180CC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713620422;
	bh=upow67vCfBgdjPg+Znj1MsZebPiZwY73sVKv0qRtdBI=;
	h=To:Subject:From:Date:From;
	b=ukMFJKNjdQfrvQuJTQdmfE/03TzjrNQLbgDO6GQZdOPDM3d7MKUPEeCoX+AP+gYyt
	 Sbc0NTpBPn5U7jfxEILqo0q1vTrhkakPdAv1+MbqBV8WEmf5kdI06n9MIifFn91K1V
	 rvr0dGURnOjTiuDT05vRLxsUrX2XHY/+BZMFDrZqx22MnWWl4rZlL7O7MM+C04VP7h
	 x+JmHUJmWX1vtXQNeFsfqUPg+ORpUYNsN63lPxJG61V4qlfdG2P/hDRSgKPVEI6vOF
	 nDS5V1abmCuGtOxc6GM7etPWrdHSuuVF58zLpXp+dJCCgQPWLqk2iIWtZ6okifNEcg
	 gcsKb+wsSQHAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9EEC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 13:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362042280.8439.7761524841370979142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3851f846f472d677fc425167fe64bcf75562a90cf0cced64647f957fe59aee
Date: Sat, 20 Apr 2024 13:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713620422
