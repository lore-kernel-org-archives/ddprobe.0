Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E7E262804
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744100994; cv=none; b=W0G5Z0SMH7NBM60BTdgjhz5Q0en59kaw1lzlJz4qswb7xf4IbE0zLUCzG+Y/Sbw4dGeL7lX3eXcD2UbCO8mJsjdJtq38YXdXKHqbJv0Z0f9Kjs6M9VhXjTU44RI8FuX47SnAeuG2xE21ASb4oxi5O5w+2YxRD83kEMitVrWr+4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744100994; c=relaxed/simple;
	bh=qZf2h9G2onkFdNAaO83IomEYMa0qf2K2EN5Oqu3QYhQ=;
	h=To:Subject:From:Message-Id:Date; b=ZLj+cjiu/pEYOORAHBpMdEueLB1EynDTxjq9KULDU61eek32h2/N1C9sfbhXWm8P49O7/B2ygUVFbtnxWQBBQbar8e9EqK0EAM8JQ5LKj7V2HHLvuZTdx4x9anNfAhjpeforknZzZI90bR2wwlQQJzmFFHs/Nj6NDnJR4nnlUvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELgH1aTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELgH1aTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F61C4CEEA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744100993;
	bh=qZf2h9G2onkFdNAaO83IomEYMa0qf2K2EN5Oqu3QYhQ=;
	h=To:Subject:From:Date:From;
	b=ELgH1aTblIPXrMa3uc/vwjDEtDI/9Bikm5dx6z+vQTeUtsaYLSjgE/JANQuGQVa7E
	 q3dwlz/lBUMMk7L8guIUWEXnh1Cj/1fErrTJ7dHn8siEWQVOjr6wiamG/owR0Quk+Q
	 dAMPBpl/hJ2vB/DH/FpwTd0X/I9jpPXOa3e/ILOhssUl9VLGsdLCWncLWgvKaBqIfu
	 rlRC36X6bnd7HyK2HYfQ9Na8bYiC4Gk972ja7YbSGWw+uDC0Q++ZJde2VZUl1sjXGX
	 HrbWrs0PXOI+p8ieiF7IVpU7MpIPH4dQIv7dcfii2XAsj4XYm1R6EAX2jehMoBI1qh
	 61OA9njSIjK0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF6C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174410099360.29022.17151180940137644843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693d0cf5377cb3aa5f5d8e545fd008bc088b5253ae5707163858050f6f169778
Date: Tue, 08 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744100993
