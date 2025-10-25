Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7522F5B
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761436794; cv=none; b=Jxi7Uk+CcSJ6MiEEE0OjyhpDPHC6ha0LbYP7bY99kEIJZ8U2LW5WlEN6BfwC+WwI8Rh4c2nmihEPKc8prh7twv2/LC0cR9Ry5pW4+qARMxDifhkhBwHid6lzXbnrgtKcj8KG/XXqZSuPVtsaNy/h9XsxbuAtcffwXPjZuVAXGIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761436794; c=relaxed/simple;
	bh=vPycFzDGWElS4mho3FVKHwcsPuaXszqGNFEVuw/GOz8=;
	h=To:Subject:From:Message-Id:Date; b=GhtK8I/bYs46bS0ych7RuTOWh1jQfHlEQ+DoXEaodIXTZ1LZArc9zW78LMi3bdZ/dfr6iMznzbaMHoJv2gsdI6Gd+ubpd8xt78TDUbuPoQS0ZixRAd5SFEl+1sL4AEjlMRFgh9b5y+IJfR3RYsXRqHYfG+wrBj1UZRyJjsx/srw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8Mz9UJs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8Mz9UJs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD8DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761436793;
	bh=vPycFzDGWElS4mho3FVKHwcsPuaXszqGNFEVuw/GOz8=;
	h=To:Subject:From:Date:From;
	b=I8Mz9UJssw3hsBByz+UsJobaJ72GehfLTl4i0ZxRqdMG5Trv4ynYZdnZAx2EQHdg0
	 9xt/ptAh9ElOl7hPwugSq4dFd7zNm/Ki1BXJM5vE/DmlBR2WqExu4ctyJeheR0f92/
	 tMQoRB8pWiCuUpVN1T4qHAjzLXVkJvt4R4to9MKUbswwzXynF1YzbtgM3iM3ar7xjL
	 E4N8Luy+6SMPgol9jJna6cMb72ccJeOkbLzJ7cNlcHoJZaMw9dTDu0BesZ8C0sNVAY
	 z4tkyE1VWh+ThtykLqDe/n62EevEiq6xq0qhDG+s8omB6P68H8D29GaNV8k0sCndKh
	 BL91R0fyi/M8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147DCCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143679358.569.196803855351588148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb5dc81b179e7252e3f2a48ea270c51c6ddf39fb1544e362b59ce345bebaecd
Date: Sat, 25 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761436793
