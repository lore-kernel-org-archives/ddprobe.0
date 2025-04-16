Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A3A189BB5
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744816794; cv=none; b=oBk1uKRuZ0DJNwKNdaOpRpPB9uqEiYPtJBlsZiaf2OclIFKumUiEkb4uc6///klBAqZvfI5JWa8SZwoCydgH9VDGuxYh0cucI2x0tnMZmTaiaHVceUXj+Tcp61LlaLb8dvs9mKo0tIGJjPFOvc/QA0sWRsvwh4HYlDnjIHau+QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744816794; c=relaxed/simple;
	bh=ESxPh47Z3u5EqDb3iHY0FfWCo4R8Cw5WMvlPkrqo9dA=;
	h=To:Subject:From:Message-Id:Date; b=qbfBTUcNQOgHXXDPUbg8+XPQrNTrOccKAJS/T8FoilHyxbVYpTXgtCpCGCDowmUvQoeNlKipiTPZhbydPahGaw/y+apRRxKWKUF5fj4eWkuHkPIXi+LLfF7vxRm9p9tCXXeP5hmb3U7uTdASPagx7Pf2d35oR1+WWLap9xg0yA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8wu2QDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8wu2QDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3D6BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744816793;
	bh=ESxPh47Z3u5EqDb3iHY0FfWCo4R8Cw5WMvlPkrqo9dA=;
	h=To:Subject:From:Date:From;
	b=P8wu2QDK/qML3BF71VF2xIgB7ULiT93zTJsqpH5KnV88qv1ZoLx19ahopPdsFooqG
	 T1+ga/iizhUwWx4/lCFRcpiuo76zBdRwb4pNNdOCtdmew0YQklTOIPjNhl5IT2dA5R
	 D3ZPB+3NKYG33W+k915vuKXOL6UYCp5Ks8Js3ULEiJ11TeeTNqPpLVSuApCb/JI2sr
	 TDgGkPu9mKyKqUuumIruP/w0F83kEjpYmC+RbMs6x7pes5bDRYA4Wa/RDmo+sqMfuH
	 IWCpGzpEqpTXPOJs+Tw2Set7qkbEd2r/3glIdpqasUjZESPLgsakSjnSQJ+FKqKJfU
	 W+vpN/qN/g3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA52C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481679363.28911.6086354535404522312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d6b4e67a8e482f6d2aca10fe8f32a523543273fbb7ae3c74f9c3d45dc07823
Date: Wed, 16 Apr 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744816793
