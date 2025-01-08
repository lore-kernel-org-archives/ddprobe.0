Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB961F0E5E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736328354; cv=none; b=Ppl7VcLySzzVOHjPIPJUf4VFDJQxyN2jz8uschFBi6BfOjwIJz3oHCAIJlMLYOGiyvn2/rN5P7R2Uj0+qEg0MoPwKN3coaeFSoqqY8HkBGX6ORju7PIv5Y9yNOLGJ7JwRhPq1w/Lb9v3u3z3mkEPksSNFzZwIeLbcFo7G9ODJpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736328354; c=relaxed/simple;
	bh=IsUJ1NNhDVdesG/BP3nttN7FdpwZdBwT1X1CiQffYt4=;
	h=To:Subject:From:Message-Id:Date; b=Di1p589xK773ZT5FlwyYqjmrSUDIlsq6ervkwAOa2qZ9Ujb2/cmHv8EnABiLO0S1W25lZNGwv1RjH/ym/8i3u6tWqOaJLaUZa5H/BsqoY+qAbuVaqVkfczzpdtWU9H1LaJA06rWg0UQMc3AbppxUcthA/SOaCNIE5fQcp19ZcwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAFkdYtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAFkdYtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B966DC4CEE1
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736328353;
	bh=IsUJ1NNhDVdesG/BP3nttN7FdpwZdBwT1X1CiQffYt4=;
	h=To:Subject:From:Date:From;
	b=gAFkdYtTsgodSLzPlcSHjwjEgwxHzWqWvTi5QG5GDgNXphdVQfuKW/XtrT1VQsHrV
	 kyCE8qNI/QqU7KBLDGT46rnz7Zx4KqIodu6mPOp8VGNBy2OZEzRdP/+Hnt+jZEyBiP
	 RQ6nWKdC6FyyhvOLPlF+1OhWg2tyGsmf/cp9U72QqxIB4U5XAHQFD+IbDY2O06p17A
	 S6nOq9g6+D8JwvoW838AJEtOFKR6zK94hqvmu4rs2YQulgKgzgXkGTT8oOqUcbNGCQ
	 t1PDp0Is4banw9qu3eiaM9AtxfrkDtNH0elfZxkTP5O4QUWI2ktPaQQfvLZen+nxOi
	 cgfZh3G+sfF8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39D4E7719A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632835365.4883.8300452281052224367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dbd87035583dc11b28254ae7c446e3c294f404af6caca4858cb441fd86e124
Date: Wed, 08 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736328353
