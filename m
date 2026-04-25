Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2944D86331
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777124854; cv=none; b=ucnBMl2SKU7hoiJBbfycZASPr2oeVVTWeU3WIg3mtPTn6/cFXTvvgn9kYqHM8mjUVReRwzUgV+Ww+nQ2rNfFB0pDRF/rk/brNSB/jkMMtjylEvnnhsNpWnI4r6ezzuQxhIR0Lg59rU1+B+05V7Qo9F3ca+WHR+NBFS0XB9Vs8DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777124854; c=relaxed/simple;
	bh=cN9fWTqOp9eJ/lWtnuLBpQJkVQ06WfS3ugmZPSRS4AY=;
	h=To:Subject:From:Message-Id:Date; b=qagJvYy336txEYRgLFF8UqROYm3Poe/DwZiQVIH75aQwkxBKa5+29n/dOyGxnbejJ6DomGXnPPI83SLEaFnCx/K3yNfemQI+tLAoiP4piyi+agzvqlNaHIT6Nzxjxcll44fUh66esbtFP2THautGGw3RvBPV7b2Qtoqz8ZQimjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5aepX1z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5aepX1z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC74C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777124853;
	bh=cN9fWTqOp9eJ/lWtnuLBpQJkVQ06WfS3ugmZPSRS4AY=;
	h=To:Subject:From:Date:From;
	b=n5aepX1z/NXSDA3HpQfup/rZrvdjyYhnlQ0AwjFLfrVCM8v/gmbLagIstl1qXleFj
	 4BAlbRwuYbDk6pFedjsWXdALtsGLEwhcXuj/MyUgJKqsRNAFnaeC2xdGubUni//dWY
	 LG9Op9HIa50s19Ic2Aymh/SmFJxxRxWyAO2Yx4NBh7gKTXsWOo9qqvEsfSBNsFRMz7
	 N4rIu/AJMdjM2rBYjpV2zOm9hK2sNZJln+2EvJEYQmxZZ9TK7xP7PsBa6c09MO06Xs
	 9Et5SksBddXEtiyv5NkiCTX9LEmjQLNTA5t5luWCHns4DgA4DyhQPgZcqmxzs9K1aC
	 ZBjA3z51mi6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92F3FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712485368.22172.14932572272027756378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6c0af4393fb00dd0d4336ed11df27aa35df2a656b23608691f16838001b151
Date: Sat, 25 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777124853
