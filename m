Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140062765D4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764346974; cv=none; b=RfMFtKvG3Ba+6oelHReeTi4Yt8wYwK4YLZgSorw9YscXmq9CdXtn39j20wk4N/HujrNLbN7ZEDz275XMj6lSvucVTvCTcr+Nf4NbeTASFh1u5FC4pDF/QZUVJhiiorzsPZmlQybyo4NRfCc9bEd8/CDJjmBGYJvuQUaqYrLXjGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764346974; c=relaxed/simple;
	bh=pZ4xH/p+syNHZ/cvqv2hPybPF+G6S6bVkGgzrHRKUpw=;
	h=To:Subject:From:Message-Id:Date; b=s56eU/VQMONNtWc+iEmuHUH7Ec8rwc2T+eTlrHyVVhLpjmQDKUZVTefbouX+XvVSRfZJ2Jh7mDG9IwkpgBYA76pplS/ljd87GJWz7gQ9lAcL7WWKVGG+XwGeFme8nzTOAG1qE4arcUp+m4S4GlY6EdoZiZfCwipYBAZnFyc7Nj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjjWVKDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjjWVKDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC52C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764346973;
	bh=pZ4xH/p+syNHZ/cvqv2hPybPF+G6S6bVkGgzrHRKUpw=;
	h=To:Subject:From:Date:From;
	b=fjjWVKDl1ZC+8i7trox1t3FG4CmOpWhGYRNuJ86ypWrpipDgxQmeTJjDoxpucjpnS
	 KPWhPeSKAajDYzZ4uI9gD9K3Zug+PSTWg3PVPAS4FIpjI7p6CQr9NgysKoRtTQGLEe
	 PjTgb6EolKUDPWkX0JQbVVrlHh7RwDw1OtQoVzDQXYmZ6BiBZe0H4aCB7nOQx3IQgE
	 4fGWkMLilgUFciE+EnZeKEOjJp6kErVNoan0qHg9UXg7k399PoXVjTHhs7sqLzmH5R
	 2zXvLSoc4pz7Jd0u29uMfR2lzXkrz3hXyyvo28DwDsqsP2eqtpfllrZXTP+Lx2Z8qp
	 U41z5Ozf58/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BBCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434697359.5080.8589456273416630338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd845aecb99f65825110a552adf50f3f90dd2e5e824557b32f50c3e668bde39
Date: Fri, 28 Nov 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764346973
