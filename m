Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565E41E885
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733592954; cv=none; b=Kq+IKKJsSDyRudJQWad7B7cNYdLyWsbexIhz7D3Bjiq5zLpHK5cTRMy7+l5osETqPy5Jm5PtLCnGl92ITs6UWLm6T5lJY2lEIW6wGtGXYldGch1XIBtc/a8nUngrDYYN7NIyPhCZsEURAL00jvjXVQG5XaUjNKiQqYchrtlzwzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733592954; c=relaxed/simple;
	bh=m9TtSvqbX7YAWeGqLLG8KKlW/EPHCLiEiq9Tak6/24c=;
	h=To:Subject:From:Message-Id:Date; b=I7+K5QrP4UocfL004hZQRUOWSYLyiesKbXr8MrL02pkCNFIECXevcKzG67JKOf0f0OR2FWhNvEEiEG/OaSaxDVJMDz3IFXkPbMjroBRbypnqYThYGbqV/5yD2UyErwZILk4yCjPses3M30VpPxsfwNGqL4GFBj5UsC8lwAYsGBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVbZfSx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVbZfSx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DE3C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733592953;
	bh=m9TtSvqbX7YAWeGqLLG8KKlW/EPHCLiEiq9Tak6/24c=;
	h=To:Subject:From:Date:From;
	b=EVbZfSx3ro1nj/keqVNVhIflxKFjwJd3KVZ31Bd4+ZwNVTYuHt/X8wllodgIA5V9M
	 /gT0TY+QL19lUXg6u6ceAtCWWgwpioBGnI5UgxGRH5sJzYtsptpoxIBUcAlNJWtKt3
	 LMocwwo0LOXhI8SZ7w/QBV7zVbcqEv2aVygrxDEOnxc5qPbARjWiQ6dh+Q4CdGpB5D
	 RU8DQ4lcRYggzdfsNebixwE0dqimDzqnKx6t1yPiCmEXfLVe/5VM+/i7EUciqupzmp
	 0vqkvTOG/3ty965r/4ps5oOH2pthQw33bu7rWcdJkRMhCIoysbrJ/O2xftOL4101uL
	 q6MxGbMwNXZrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A37E6E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359295363.13928.9543663324685033865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5fee2d02283a47b44146a845d74e57149227929f86886c9ca246dc52ca1b12
Date: Sat, 07 Dec 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733592953
