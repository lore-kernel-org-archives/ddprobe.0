Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EBF155C83
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735337754; cv=none; b=M55i0twPUhUYEXzsZ//wwPE/Vl1X04TQnTv9+D3OLW1+1Z772/rmzQE4c4poVgypukJklJCX4XNixHdN/+o/TxwSQ4y21NGYilifF7ky5JnPA4kYhBGEQVbm6eLv9Ym/ftxsd60ypit+hOLlMuUKwvVsEwomC1v2ZYHohBwZDj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735337754; c=relaxed/simple;
	bh=NyQON/kse5YP9/NxYosYxUAVHnARFhp1F4hczkQqRtU=;
	h=To:Subject:From:Message-Id:Date; b=Kw0t48t++AaZMnxcvLriQ8kDrjdP+4wAzAF4KjQpg98pHmYDGwg+KGNNMl7VC5C3E5BpiSuKiIU35hou3wJzEHjKhETaYLa9Z2PEB4eLghNnegNTi6r9aRGMSBG1mez6ZbpwCrblVoeFgAw8I9rY3Atat6bkoqAnMejwof4J3co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKWDQJzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKWDQJzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECD4C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735337753;
	bh=NyQON/kse5YP9/NxYosYxUAVHnARFhp1F4hczkQqRtU=;
	h=To:Subject:From:Date:From;
	b=sKWDQJzk3VSggOOk2XwZEHiGlH8OQLQZquJ6AAKJSuGFNLtQRh+zJd/gk2O/r8/G6
	 +iKNTk3KYUEyFiTCtK2r590+LoYb31/6MOBKj0KLdIiil2uyoYiBOovDe896FCXEkA
	 /xzi+pDb6PPUvApGfkvOgR4IcTFXjlzhSrrjYwJ9oiB4bvBhMJnIQ/DeEhhd1NBvl/
	 li8yVwdoNbQiamKpsBhVUtMs242v9zXfcvkzxYiPCXE6yJENww3whw7mnlhrfxCVul
	 PPTVEzuQYuB7X6W3cWqq0QNUG3ndgNRO51UyRET6trwJJNF436jQ6o6KYcGNzl6qxJ
	 0FjM+rRKLvQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B53E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173533775358.7296.1539615785057463081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e2fee267864b2d4fafd87544436b32504158874c588c066719315e4ace0dc0
Date: Fri, 27 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735337753
