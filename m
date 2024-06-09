Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779134C79
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717902443; cv=none; b=NN6aFGTVEVIRaVL8w/4bz1N/FS/jtzUgs7Fv/mbeD5tZziORqVM2d3a9bBrnIgPdDeMLmUncZe8Z2szqCA1CGSUjb7JBQHVv0DDcnPwtEjj7qb51mbQSOO0LfVF/QIDxR0FUDrT/ReCZ802xNxFe2snlNwRUmNKVDLu0SJStx3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717902443; c=relaxed/simple;
	bh=4bKORUhRAiWKPdBSynC3GiufKtFLyTrMhDRBsa1ixOc=;
	h=To:Subject:From:Message-Id:Date; b=LYG0O8MU/T6Os24BEzwUTbWZzoX4KTOI7Rrl0S0fzwaXZ6FZwr/wVFIzHQ1jXQkMqyleDkehgPJ4K1pMiWsuCeGkIEblRxvYvOIwg1mSUeAdIx1Tka1e0/2nL6EJWFjqqT/N2t8lXm8yaLNh1jhyl9sdKqkZ6E10DJm6c8/FWZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfD1scrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfD1scrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE0A8C4AF1C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717902443;
	bh=4bKORUhRAiWKPdBSynC3GiufKtFLyTrMhDRBsa1ixOc=;
	h=To:Subject:From:Date:From;
	b=BfD1scrIRXGf86K7PQkTOrHDH08eE32HK5zlCmZ5/T/OmSjTHXL7ensx8payCR8UO
	 jO3gTHy057YS+wMH7Dqxo5hRdYfP6fFdHRe1QQGZNG0/DNKzUq2n808V4lNSyoFHPy
	 W2sq1PSRD2mG9SBExSoGRdqIKkv3uiynugAjHtPER98zmb5hDCWYH6uktDhs6wof/E
	 fcRZxdNUIt39lSKPTUOr6aNxEY1rasfA9HZ4WNa1xQakceRUnjy/8wnfQ51QS+z9sn
	 ynWlHBFuBgykUHSdGOJkwbSJtYkJqUiIOeBfFlNQGMCu4CPRadwb8CQ/yzf0wzVZmY
	 /Ou+KJ+SXcnUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8CDDC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790244286.7161.5034856057706978138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c843066471f354ce923a7456319db01d6ea9cbed9a12a58153d6550b909e8a4f
Date: Sun, 09 Jun 2024 03:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717902442
