Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DF1DDC2B
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777013254; cv=none; b=u83teabpepe+fZ0HfAZtz4ZFyDnPE5QY+MINLpCyXEh8+unpDlDmh6h6nU+8WjMYxxKvEYuwqa4dwsR5ehnCZeANFFMeoVLnsNyWjSdue2QrPdU2ERMW5GdMnc9CYay/6yaoxDEW4J6et7GhSbdXyHxQoScAJmSOeO6S51xvlLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777013254; c=relaxed/simple;
	bh=oaSUYfmKfmZ3PQEywuHdVgQRa/Vr1iTXUUcuUOCCTVQ=;
	h=To:Subject:From:Message-Id:Date; b=VJB9T0zsTIL/54P9NkiCWF93206bOU/nrqdlivh3M0/cdy9nopD19kpJ8F04sIeGk4v3WJXNGhTRR9YtIP/bd2qte3+D7EpAOVH9Od9e8aqAsw/zYfV5PLGhk2fDG7XnLt9SF/cZSri7PKfwnQRHRGTl6m2gacYchVKv2jn6SwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmNU7qB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmNU7qB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA77C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777013253;
	bh=oaSUYfmKfmZ3PQEywuHdVgQRa/Vr1iTXUUcuUOCCTVQ=;
	h=To:Subject:From:Date:From;
	b=MmNU7qB8gS1hhydLHtoC30p3eS7681KP5UJsO7Xr8Nha3V+jN3dnc4aw4OGAlw49R
	 LAjcPPZRGUqLcVvyKEwYEw97prY+uGciiO/Vy64jgzYG9x6xFAAPAe0/vkCwfg6vXm
	 dfYQow7ph/gKZHK7LjRWDZJ1OeZiQnxyvogrwlh0rNZQQIuYkvI9/CP37Ky5KUNiaH
	 4HEgwHFNG2TTfMGr9o4zgS8d2IJivZzG1P6DLEeZ/5gCeMnoG3BDuvVFxfEmsACUB4
	 u0fph10BHXzJemtigNKVAljDBNGHWsjq5EeXAkWEjU3uyz0bFmYFA+HtDJN97lKNvK
	 5uZnWyfFHOV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F1FB44BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701325368.16326.13282709641493322387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3f6f9fb0b86bbd6b4d6fadd07288ecea357d901c9e8bb18c51a13ab642ad0ba
Date: Fri, 24 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777013253
