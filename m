Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C0F215057
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744970994; cv=none; b=rwDmH37yueXOLUZqBnvMtHT2bMtbiY7/Ste0MGu+U4xbGBPe9dOxpvBR2wI98kZtaFzX8+vyGQO99G+/Kn4wNy9h1i/8SMyjSTmjhbEn/wr0/3RnGtZEvXviwibBuC+6FHZAJOgoxOZQj+l6viH14bd9ho2UirdpaJ+J5mrpn+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744970994; c=relaxed/simple;
	bh=y4IMp6JrOSIbS11s06V6l1OYMiNITs3Ckc6p9O3ddm8=;
	h=To:Subject:From:Message-Id:Date; b=fJ2SdhHtjm/gqXRRpvvYFf2/FHwCXljLfX0iRYM/6D2/uDS2q4fEH4cdPOO3wJvJ1nrNxkzppabqSHTYks2mp++zpM4V0rnZoEday+EvrC6fvkYq7DzP15WDifew47L+LnFqlsfa0M58OgO1S95yE+AulpXRdABYEhqhngrkJRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAlVNKqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAlVNKqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C25C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744970993;
	bh=y4IMp6JrOSIbS11s06V6l1OYMiNITs3Ckc6p9O3ddm8=;
	h=To:Subject:From:Date:From;
	b=oAlVNKqqJcf7cC9uo+WeTjokzwd/b/0LuuouS8ywpicvnV0KjsO+AxH0saiOBfKJU
	 Tbj98QbmFHOsYbcye38boFh+25H9lRhx/7aKsQOkx+8AKcIBa8/z0I6MTVXehXTSXp
	 +Pye5o9q/quA26IJVmpyoSOYXgO9QTuF3eZnixdf07GmZVUZSArxnf611f+D5O9buY
	 JJTDEoDGZpatiF4nfRuiwHkMEp3Skby8vIcqf1+iB8E7STF7H4+RJxvW/u6qQSlKxm
	 GOwatWkj43A8HxUVuX7YUTk9QXI0EMeLCqjT67Qxe/4bRuF9p26z1O/v0ag/ocoeJG
	 NZdZ5O20pnBpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C54C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497099364.14575.10773539676804083468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb3c70064e2ffeeca7b5fd848761c588d08f2b858b1c7b18564e3b3a3b79b41
Date: Fri, 18 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744970993
