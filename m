Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED7273D6F
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767374634; cv=none; b=D2/fjv99AuUuaClc/tqkOMsw3EYbsopGlQt9elFY5fO//eGih51nrPVl5XhK2i6ViErcDZTib/Pvuyw2CAVers6zdZPQR0jAerQ13YYxdm4Maam/HY9O4Ptilqz1QPwQJQDfd2yxao0OQxZFKtjuSDUHl36BHZNCqeGFmg81xmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767374634; c=relaxed/simple;
	bh=qDnGcZbCXfZmSei4ZWQgzO9y6KJOVbGmTqsz2Op1aYM=;
	h=To:Subject:From:Message-Id:Date; b=O+lugXOUzcY70IivLrUq4haQztFhgszQ0Gw0V4ymJM/I+5h/FEv5iFFi+b7oIOHr5NKOMUF2lTOWKATTKisnFxt9B++EZX3Pu4QoHdBIZTjS7hmOTi/jqpfZR989mCdD0AW7S4kZ8suKtnV8g0huYeMJhJJFe//Ean7Zmo+JJwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggmv4Aw5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggmv4Aw5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F5AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767374633;
	bh=qDnGcZbCXfZmSei4ZWQgzO9y6KJOVbGmTqsz2Op1aYM=;
	h=To:Subject:From:Date:From;
	b=ggmv4Aw54hhJyXjomtiEv2BlRiECfobZdxsBCHmmniv/Q44FTzKZO+5oo3LRvqGbQ
	 /G5qzIx9iwfRrO2eMVuYSfaFbe4r/YLYXMAXJVAFGIBEWhPEfU3aVd6KwS+4d4Vzv8
	 MaqtCXFzVScPDIBmlDfhLW6iLjnKdSbyyX3Xfl4MGrVOyUrY3PGHqGbOXNoM1eM3sb
	 UctLLtautmuYRb7zxRIJa8tem1RVkQDni1XJZrnrlsSuv7kxC5Kh/HaWeSVDFij8gA
	 J/0jWOJfmB7JYrJNYuz1bDDffc/oTTVyYrX1u5ntE2u5saTSobOfsnYB6v5drapufJ
	 Cr+iAygvMtgcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95028FA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737463357.6990.1614801350629764916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545beaaf20cbddf341ff3d0249c44ec189e72202892711694de8b0817f22a2d9
Date: Fri, 02 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767374633
