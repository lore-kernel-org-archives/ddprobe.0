Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B1C15B99E
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724835354; cv=none; b=Dz7+2rxliTVbQs+hMwjthfEFgs4XyTF1JdmyxuNrySkfr01NwvJeaYy1SRg8g5VbJfm5iz8FKXolu5uW8dmH2egCuDTQQpXhswhy/bDf/7Qx9gl81Z7rKaFm4gkifi7F6RaeSX3TADhXoIGPZLhH31nMfpCx/Aey75V6YuPDw1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724835354; c=relaxed/simple;
	bh=won26w/l0D+jc1ahgAcAXZgCjNGy8VNbwTbn4pR/6no=;
	h=To:Subject:From:Message-Id:Date; b=KgyMy0MDCb1Dm5b+3KZcfpW8P1Ri3OTx65I+Zjjd9ho89Emx0jZx0MoLwahJZ5wdeTCI4KTivfwTiPa3my9nITgvJJjjpzevYMnxwIOVWF/z+oWr86cua9G9rziyzUM4su6bG73gf1lF3f7lTBhvGl4k/Pht0HhFtWI8T0XJu/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nk0WeXAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nk0WeXAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE409C4AF5F
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724835353;
	bh=won26w/l0D+jc1ahgAcAXZgCjNGy8VNbwTbn4pR/6no=;
	h=To:Subject:From:Date:From;
	b=Nk0WeXANuKjUVRAs2m3SOXXGUghJzDk2SgI9hX3H9RYI3QyU8Moxw9ydB2qh9/WMc
	 +nf+fwxBzZY00dAMCFzL1/dxPETt1QFrvYXbZ3r7tYrdykl3kmjo0tamii1sYObtIp
	 oHOUWTAsh1Y27RaoNGeeMgeSzklDiqXNBA99BvwaAP4bw4hQXVQXzWEurTsfbqR7Fk
	 rOzFjzZohLH6X93dEggDiYSFfZzwd6Z1aLggAtNYXsvpnvkGVBwxd9kB/R/oAFnFxT
	 kuwpVbqnKK9CUxMzEH/TjDN43Cn/gspsaj0VeV0P9wEayJIMCp8MGfCAVoMl4aJp2M
	 3K9EgTgJwELhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99589C54753
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172483535361.11032.13492553406589281762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74736967785d93f8ae62abe0d66879caf52182c8ea134085314220fb830fdddb
Date: Wed, 28 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724835353
