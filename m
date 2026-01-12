Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6692D46CE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768230834; cv=none; b=VzgpMrZnHTvGf3fxqBZOTndp4difAcveYksCNcSujJylx4+t6uzkmPw1zLZVvTy267jLIgSWcMuBWoRXHbIhMPlDvi2oiVxUCGRciPEqbFHYcOsb5s4eeh6Z5/O4mFVuvS8Y3yggQdYgeRX9B04GXdsbf8nUCQSz5EINykPK3Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768230834; c=relaxed/simple;
	bh=fC/YUR1EmezNSjYs4OiIqWnnCyktCabmDcRt5JkMjR8=;
	h=To:Subject:From:Message-Id:Date; b=UgA/ej2dGRscyrE0lSwhtjLRp8Hf2vWYHaH0dKjVRobARmrYfYLu6op9RhFnRYm0t/xCypPaCRWmcAdpUQOjKMoWVeGgODPT4Hs9MV0d1S2IQMp4CPN3SmG1I8axetcm5M4VYcfOhH1dG0xUykIEL2ybVJr6THAAr6qBz8Yi8Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epgmY+zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epgmY+zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27A0C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768230833;
	bh=fC/YUR1EmezNSjYs4OiIqWnnCyktCabmDcRt5JkMjR8=;
	h=To:Subject:From:Date:From;
	b=epgmY+zsjMKtybk4F7hc8k5k+zl/NzUQ13eYGNOl9y4rRuZE3/RHqtKG+AXqqYQGI
	 J165GZ/sAfyVmzBe4fU2fDoL7ssuo3CrF/K8ZIZr8RvcycgokXGIROsJlHi/ufX/bq
	 D+yqUbSyOZyDOfnsvxK/vD53hKdMG9B+1wWzEHfIDQTEs4z82PliJ4XAZCs04MRTER
	 CHNPSyOanRB9JQg8+Q0gkE0PZRF1dpIAeU8JIVbCwVgDUBZi7tT3KFyQFILFsaAP3N
	 BAYygrsoRGs3Sfm+wcAnsNNyAEY+kT2Mpphj5txuKvNv6mjbfXaq8XGFlKfZrqBaww
	 O9jR219hKiyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9173EC9EC97
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823083358.5925.18060782199108161238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 390e59606198e768bb352d6312b2764f186ac74f230f583ba88560fec93fb317
Date: Mon, 12 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768230833
