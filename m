Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465A617578
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742122794; cv=none; b=UvbMWNnMDtfq2BcW2+yTdG/CpZ51YDnc0QgxWVMhjTC6WbJxLy8aVyjIUPthdPnv4sP0c/7ZhRdUEeRX0tYpl3Eo4x4aT7vtxKZLIBqorWl1fFX/Qw6/NkOEc1vbQWxgKlIEUUiorMRTG2gA0Pl59o3J8DOdxC4VXJevHGUJ0Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742122794; c=relaxed/simple;
	bh=miXsFj9IRWRAHgBBjwkyDcq/RMkC52k0VaQsvjsbdwY=;
	h=To:Subject:From:Message-Id:Date; b=JrzNwAi6kWCPoRRxHrx3TjqCcomiEsYw+IMWZS+xaz6hFdDEbANKUZ7llEA9Prsrpy+KSvzdK+uTY7sPaYa+CZzTNFiy/fNYVSNoIHJxFM8WJDDdU9SeTiFdukQabQEosTRR2PIunk8R3xGm0Zbc+ESyNeHKLpf/F0r7nsveUZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc+P11Sx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc+P11Sx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9132C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742122793;
	bh=miXsFj9IRWRAHgBBjwkyDcq/RMkC52k0VaQsvjsbdwY=;
	h=To:Subject:From:Date:From;
	b=Jc+P11SxOZSFY/Aucm/rIWRJxTCBLxyr6MWxq8Xm/s45gfO4MnHpw1yzCyFVN2wjb
	 bFZ6ysq5z5S3QkWEx8+rMaGXbB85i68ZpJbBtz4JskuoIp5C443CeAHG9SpiyYmPMa
	 6jjXz26q/wjmE1pWLkA9R0Jc2hA1Jb1bvivfajtvjzcIU1Q26ihYgP/Q4MHTXKmNPh
	 pemQfAB4bdzLK7i6j2OqFGiCiW98DxeIDskgv6hg+Go8k3Ye0G7C0tk1d9YHgtEKzE
	 s8ZxI1AyunzxCWDkZVnTCHKm3GxUZ9oECBUQTBR9h6xAfq2GIZJpy20KK7A6LYfKV4
	 VbVUqQSQd+yGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12C7C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212279362.17808.18378839902478295675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ef63d746ff91d44639236f1104860439b41d8ae59b0241c742067875b0a37d
Date: Sun, 16 Mar 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742122793
