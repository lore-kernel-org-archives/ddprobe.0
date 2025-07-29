Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1886A238D53
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753826394; cv=none; b=VRFwObbogP57IjZPxcmRqbHED6370FpaHqA3vEotmrkkg3EqoB0HA0+X7KtPCP9F9XhpAN2Kkurn69CbGJK6F5Ts8L7wX0Cnlsx6T/rnt9k5dtQD+QY7MaOM5vHFlbDIzR87v8u5dG0l6JJwIkYyHZwhe0RQZQLx+mqhNBhY+zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753826394; c=relaxed/simple;
	bh=nxA1ktz6wJi4DgyCFPCOevsY+w00BVlibSj5WpmMxfc=;
	h=To:Subject:From:Message-Id:Date; b=UTXmyWrOnBj8ZlvoWFmkoqgU0PpvKxWJZL10gRakhrlmo1RiWxGvCwe1ldLwPu9n44BKHCiWM7d2EzDQRp07VOn3NxDFkHLjFz8d6v4Lzt4IPjlGWOM8EhM4F/vsMSUngBqd2qMkS1Kf5SgI8kiNuQKJfaiTONx4dkrR1bVFyt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9WEVJDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9WEVJDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE849C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753826393;
	bh=nxA1ktz6wJi4DgyCFPCOevsY+w00BVlibSj5WpmMxfc=;
	h=To:Subject:From:Date:From;
	b=m9WEVJDMxaKSNeXeh80805wOI+ko2wPnXqdkGEt7Fl4cncq3gIoqc1v8G7Kl3xL6A
	 1HMhJFjCgo+cDHhprLlv3lPMLjvCY7wgWOTB7BIaJ0RhMIrsa1wcCSjBTREkre1rOY
	 dxTQRvmiON2zXOiAFvvFV2LczVX/whpY49hpYVEg3PSMuqHqmXR6tx6c2RtaGI93UM
	 ANaeO2WqfKWY1T7OBx3k/YO21qvAMmcwxCYdikBWcDQM5oSymjAcaDz5m2N2avJPQ7
	 J7uhVA3eCa/Bv7qT0OsrMBBCneTt94aLKLhCAbweBg6Upb3RvEJ+KHqNFlSctLeJM2
	 9qcB1QkbwP27Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A98AC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382639362.21775.34266046455886718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a517da23a4362115719eb8773c303c0d2a9612c890242edd56e7537315023311
Date: Tue, 29 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753826393
