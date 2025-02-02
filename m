Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FE32AE93
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738519554; cv=none; b=TMND+yN9fxc3ScO7VU2/NvXqVpWfiP5K9ZC1cj9ZPGEHEXTmU0t8g/UdImW9XHSK0j4vx05JS3aPi1XsZ/TulgDLDAmaC+tz9iMrWL6T3wOjvloyIC72n5pmymNR+Err62XNW6Z8HeN9l+Czenui29ZOVW9aUMKOxZ6Wa8QQhYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738519554; c=relaxed/simple;
	bh=IEJpduKrxD5iNlT+a4rxM+rD1zm3Ll+hXGjOTtiNQrk=;
	h=To:Subject:From:Message-Id:Date; b=DW5k0t0ljhIHt6MGBnPRUdpSVqfF7fH62WvP5WOZ0l5qYbJQ8MtTYap0Tx99+hj8p7GTG9Mds6ONCynpw1fRRkmhfJmnrTH6PBBl/2sf0GPGfGg90dYE6dwoHIx0sGdXdO8hlZp1pfU9z/tXUcizKemJgaa5e5L+CxiAjZgmvis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkpvgNXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkpvgNXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD37EC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738519553;
	bh=IEJpduKrxD5iNlT+a4rxM+rD1zm3Ll+hXGjOTtiNQrk=;
	h=To:Subject:From:Date:From;
	b=YkpvgNXi0/aHHxSvjGEGQVdFnXRyWZVjL1XufD94qpeb+sGhlFoQ5MLCzXxdGXNWM
	 icHEbdhlnSp2KvZcZ9gTgYj4T8OJLj6n6D9feO9fNWwlxnL6U0W9GcOrGW2BWfSCYE
	 PVJT3nugnRhujcoajVIQv2d++KmogD2AqFkrl4fM/U2Jj79T2sFPcVyEcmd/SzRZdF
	 DY8vuPA5L6kPmHn50gg0ZQuoR482SxAa/8p1LwbG6lwSuWVNOfQ7TGXN13vv/g+LMX
	 BTN8kzVNPmuxEdYKLaZrQ+qIbsE4URSsBpNwFv9zEkZWU8nY3FDPzbZonyAqhILgxL
	 ifrY6EoClz2Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4AC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851955358.20986.12755457813642552490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5242e30e4d14abd165f7954c302675e88de48286cd0fddff7771fffba0ac2ba
Date: Sun, 02 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738519553
