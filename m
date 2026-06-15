Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAE32DF152
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781565994; cv=none; b=itJ4rfZn9VXzfAxoJNU0KrGE2vO2QYvJ6IN2ToTsiA99oaDqaP9Fdoq/jbJmfBrn3+8UZQdM6KlrslbmHJ8zWh9NfDP75fUBzNcWfOjiiiCWZuzrv9a32d/z0eZU1pd4SmHy320Uhe4kfAfYJktu+G0axnEzPm4QzSJk5HdY66c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781565994; c=relaxed/simple;
	bh=Ed4AqLMNnUgv7awxj4NG9pBG+dZ4ovpw4LQ+LMVJp3E=;
	h=To:Subject:From:Message-Id:Date; b=cTO6bZjlhS7pEH5b8gUQLXYIe92A8olIiHhhhSxYPSjRNIg+1bZLZGi2dQyMyJ8jRoNmJndW15vEpiNpbMM+rqPmNegFycqBu6G5XklsYU3x0XbM1tQmnnVvKm94H8x9Sfoh+u1KZhwPTJSJrC2fHjVhSf/HGFkmOuGodPBMPoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHAMP7Vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHAMP7Vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D871FC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781565993;
	bh=Ed4AqLMNnUgv7awxj4NG9pBG+dZ4ovpw4LQ+LMVJp3E=;
	h=To:Subject:From:Date:From;
	b=gHAMP7VrDJsFwwGRFSfXh6WCkuul3X3zUkthTJLDiODytq7JxH1vK7/xSVio/ymaF
	 2fmSxKl7hztCXriUNaL+/v6A78Rj7RYnJXNHeg8q4fAKDJP65XqbyzWvx6RvAEBFJC
	 KEZbzyMO/VJ4uE8OWCBmmF3siF4a9SOSN+PoD03PA8H4TDgt8poPOtYV7tDCgB5bHg
	 s5zxO3OEbd4++X3M4QC9olIlaRXWdi+KpqDilpZIsdzrpzzSPyqIB7WDPtE5cagFKE
	 zExQBGIZ/Vq0xapYA739eo7YYjR0iiM/3q+gD4gghHPkCkJbTAXA27MhakIA7yJYr9
	 94eKq2/A9qydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE448CD98DE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 23:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156599374.10347.10721351029543630978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b23ea6553d9e43878dec9ffd477eaf6a857ec4eb274b0393455bde11db99f8da
Date: Mon, 15 Jun 2026 23:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781565993
