Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9BD18A6DB
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743090594; cv=none; b=no9CXVBaQUV4BzSOGrRoS8eX0yKHD5816Zk2BwUCxAFaFLTkvs0f5c6+jLK24S+WvLbBR82SgvM8/lnj+3o6AyhTw7N7H+DZTNUNYKuB2EURFwR7fW2nMHgqZeZ5rSgDQKOxbLVDTy6O0b1ci54sHr3njecRf3kq6+7LBcjDHRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743090594; c=relaxed/simple;
	bh=p5mRQaXvIMvn1IMSMVXF8WYrzXOG5BBYLE3DhDljR9k=;
	h=To:Subject:From:Message-Id:Date; b=LiAwhPMq40kZHHjdShz0W4wGgCOS5k3PCKlYBTOBB2oiM2iX5igqHtqbhZBj2ezkRrwEEfFrCtzQ2k58gpRf6KfFnUHZVnSU1oo2pvz9dQD+P8ctyqLglAQc2tfSZwKQpZLN96OR9V+jAj7aEtjPyys1CnkA3aPMiDW2U6ZJkhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYBbFW/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYBbFW/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6EBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743090593;
	bh=p5mRQaXvIMvn1IMSMVXF8WYrzXOG5BBYLE3DhDljR9k=;
	h=To:Subject:From:Date:From;
	b=aYBbFW/39ijIshbaCFkB9TCme7cdsl8iFhbQ9IZNjqYE4+oesMNi1bo9HW79XDC93
	 Aloqx03Lvy4uZmBx7G8r4e+fiUbZ4Z8gvynbZUIlKe5mMY+9t6EpjFsnNthBdReNxn
	 SkFNkAAaX6FGbWinAkBNiT/Ebl82qzsim2rX0TKuMHAYreUEcJq506oIHs4CHOSG72
	 l0Sl/vNAyq9WfTl+VlsgH2uYBw9m5oFdmee8UJy1CrDESKf2EgwU1AU+WikMo3ijGm
	 cByhfOmTyhe2Dfkfp2R70ljnlFD2d3YdDbiW8ReK1ZZTvikSEOBcPJ9FFjyMhMZumH
	 ewWSTG/pPwJnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFDC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174309059360.11126.12709141718233112291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ecac157dbca5da602d3235850638abd6c9214b61f046c389f06b4b06ee5b94
Date: Thu, 27 Mar 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743090593
