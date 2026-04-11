Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9F823C8C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775894853; cv=none; b=qWVdy+4W5jsWIDxutsNmgUsaywGxKZiJfhbqNsAH8Jg70hcH2EfSJi1eClcDYhaTBIB/leK19/Br2WDE+amkUjYseJyMuHRQ+tN3SD93FCthcnr0risJoxkGmTTRfgtTJNFYL6Vz8NCs9obWPXOronZjV0mkHpLpBVYBhXvJPyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775894853; c=relaxed/simple;
	bh=isosP9puy7tzV7kMuARV4j/LbjwWZnyD/PU4vEarP8k=;
	h=To:Subject:From:Message-Id:Date; b=gFpNpw0XlKRgBhJ3I3RCrPulgbalyVJAiHIEKz6BFS8szHqb64qgAVOeAtEYdE1m2I6IKGmKS2dypeDI9udYqRlnejofyL0We8xuRicUSQGYI8otu67mOEOrw610dfs+ynn/9hYes2JNDSaYCI09QMy36YeYSdN5Vuz2P/E/8aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dp4u0wsq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dp4u0wsq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEF0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775894853;
	bh=isosP9puy7tzV7kMuARV4j/LbjwWZnyD/PU4vEarP8k=;
	h=To:Subject:From:Date:From;
	b=dp4u0wsqORI9LrvMHCc+clGnRsZuXkkpx9eMVTPf7Rhwc1s0YTDIAzJC0mzZwAesG
	 +EpMzxPk/Drn4hZAHVMDwDgCDyVYHGBJnTmTZ/inEADrcc5RTGTmjMGnXfEdjEX1Gz
	 NGAFKy3n20ZFXp+CG/QucS7RgNEfLhTNRwn6Y8oTNv4uiJuWzOoztWK/Y++NaSOCRW
	 atBZWqKrMpD3ZuVFGJsF7e//16lVYQ4hre6g7NrpE74JHSzTB1MQBErml7QlNHoAiR
	 CbDLiTcbivRhPpTnp+2ApTnk5DpH0m9Jyx+v0nFbUkJ71b5jFwpXYeoOGy424H0/rk
	 5N8QEjZU0qc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6FBF36BA7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177589485369.18385.9743891806306142308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0681c3b968fc6327819b332e8a89d84899922e78c6a2c417261ac10fe548b33
Date: Sat, 11 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775894853
