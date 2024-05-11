Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56931C8F3
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715470943; cv=none; b=fq5B64QKYKmN0I8Vt27ZQ9oXtgF99rLmaZ5HZYJwA8jq182DaMYR7Yyrw80XhMa3Uy5RJ8R7RrBbwTFbLUTD81Gya2QjbupiXy9X9qoEBro3tsOp8fGIhbI+oOgG8G6wjS4X+rsDgSQkv4/ucX2bRoWMswj5NHhP+DR8rj2EPFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715470943; c=relaxed/simple;
	bh=B5NR17s8ZMrxtMHQNKcElLLuIpJtDch7T6233jXx5m4=;
	h=To:Subject:From:Message-Id:Date; b=JqKIiF4jnMGw8ZSbunlNaUZHZ8HJwLltEcs7ONeYIJw9GUmF8dic4eqBtLnQuxedEWse1Ajiq08FrpbENA0RpGKglx0GSp4qbPo3+cU+a3s69gk+Kuaji8BkWUZx6DJM1NzAD5E/zEoDparJAtIZ64zSaxia/2w7qzcB5uUOsXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=syK7F4A9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="syK7F4A9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CC7C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715470942;
	bh=B5NR17s8ZMrxtMHQNKcElLLuIpJtDch7T6233jXx5m4=;
	h=To:Subject:From:Date:From;
	b=syK7F4A9jxIEFIT9EaZLi+bChvmYT9p683VPf3r66s/T1BTI+QiGIwn0pP3xDsF+H
	 K+x6e6oXIAptw36YclIXsnRaWisvfg5p+dNuVfa1fFPSGKRobQIuRJsAgYfZw+F8mf
	 LBxpRZsJf50IrkH7n+zJlBsNQAY9OM/rw54Xz8mvlr1zMspbvnDdG/1DTiDR/ih6ul
	 JFYEkR5/n8FRZfkTHfkNyWXa2XGjv5TziHBYtLalcMwA54pg9sVzSOq2lEk09P/HcY
	 FXiiDGGtkt+NKVYxjSxSv+v+TQJqZ7w38sUYLzPfd3u2hAT4hRU87kjO0NORf20btN
	 xUJi0ofj+J9kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FBEC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547094276.2714.9124438541191006273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5877695c2a07c0f4aa751b89af5b9493883f0759fb737063408b840879064050
Date: Sat, 11 May 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715470942
