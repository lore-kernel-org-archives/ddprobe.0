Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321AE195FEC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742066995; cv=none; b=SLq4pWzILDoJF72Iu9St4u6N9eddfA8rcOqW2ixIegKWo4p0DR/EnPdU1om9zD5cpMCBY9MHw/+Zgi8ATEEcOYFpHe8yqt5wfRaW1bOfCzJ0I1qAXmDRH3kGRkm4CTLANxW8q1fEUfrmwLWwyD2ZRFUdciAt5opZQmRLxXGesas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742066995; c=relaxed/simple;
	bh=PZ8+PBH4CtP7yg55JiRXv1UGgzCnoKCoaAwzi+pT4I0=;
	h=To:Subject:From:Message-Id:Date; b=Mus3JoPqSFvvMTHoPzRQmx0t1xIICSTGz6s5Q6LWF2Sq708PGGi9jHy1fhwFs6MvjgFBLK8scEl9q/4PXhRjRZLpn0o7asRQO4M7HJR0JvFrZCnkZzf29chEx8venah1sM5HSKQvgloUyxFonGL73TEqRxe92tqiwzK1wEQusdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZvKjIv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZvKjIv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4509C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742066993;
	bh=PZ8+PBH4CtP7yg55JiRXv1UGgzCnoKCoaAwzi+pT4I0=;
	h=To:Subject:From:Date:From;
	b=AZvKjIv8NgIAqqCZPSgDIXVJ7BRhmvNGFuSuxXY4a69ClKGhk/Cetzvf27xiX0PrP
	 0RqVGMG/eD+O+pbI7OQ6ee1uuBOHxq3a2WUBrlYYIvoYSbxllZtDKjqU5vH7MZvdp7
	 vQi1UAejZsqln/BnDYa814xWQIvl7lalM1zhmjjvWAov/D+S2lQnKh4nDuNEGNT+fM
	 rpP6836QOSe7olwusuw5xa9i6VHkHh0V9v8ox+ODUXjTHSyRU+U4i5BTxPk4EHVrk8
	 oRhnfU6GhYNxsEUDZ79GvdoLQaptda00g75nQK81/Ko+7tUCDdco0ogTn3O7BSsdz3
	 dQS4RNECIRf4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EF0C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174206699358.29478.10977511058166261258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30dd88f994cad8b14787b6cc870cafead5996f3a4ff1fa849ab22009589f5032
Date: Sat, 15 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742066993
