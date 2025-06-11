Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBED1D5CDD
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749656994; cv=none; b=J21+FI0pCmkYQWWTKDkEGJu1GaE6gXziISUNtPXmFBpbutKqNdtkWdNN9qmCCAsYwiIpqQ+s6NbcQaCKzDfKScclSjwEtWlUupZBpOuYgb+yF+6JFxlieMgj0+50ZN9ld9awodmCTkkNDyOJTrgKENpXpisnSeINOq6HzFbsy5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749656994; c=relaxed/simple;
	bh=IKqct0E+1RoJUl5f3r8j4xjqdZ7/iqvTs84thM3As4c=;
	h=To:Subject:From:Message-Id:Date; b=fe8hkCXJbhPCcNWur7GDaG+TvQxDQIbvLdOChdodT0tx45Nj9NuPMMK0aJzNRLzcl3rIdOCl+ZfMJ+BCLVWQ4IU0VTk/kxjIaZTkqigEHD50pLTK+UMt/gEp6W2/bPWiot3yNQQX4Fj+OEUngYi/eby3ipwuE3XBMeRElyWxJ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/YwmoGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/YwmoGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D3CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749656993;
	bh=IKqct0E+1RoJUl5f3r8j4xjqdZ7/iqvTs84thM3As4c=;
	h=To:Subject:From:Date:From;
	b=r/YwmoGpsBe4SHCtA5rhZpTZK0PjCKjiiBQ0qzhYRhCRwgRzbz4ZxXDq1hErGmXcp
	 6TMK61YEsGY8C3IZbgdCQo4p7ib1+iDBkQMhpXq7WsR+jJjg9CCQlF9r+aXtVT1iCC
	 232qj5tledUB8xk/CfYQGQi8zwcj6LiKG5ajrIMHsPOJDbPXNYidZmPRF7YOuZ1Jg5
	 FzO5PUtp22GVpWxziQq+WnfDuSeqzmSTZWFE9c/2Md0/WVLgq2ryj9IRkU8dVTooam
	 Gky2QHjLw2Ea9b6NeeMeVX5j/tq+i+6sjFq5Io/7gM3K9BaB+2A9koMVTyKIV9bCfO
	 Hv8CXaGU/74rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFD3C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965699358.3264.2681805686569003560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae1a9a775f58dabe6de5fa8c132736a5289438b077d43b1eb7a9cf14107850b
Date: Wed, 11 Jun 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749656993
