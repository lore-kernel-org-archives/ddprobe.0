Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC51DDA3E
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740675534; cv=none; b=lJ9KhiWvuirS//f86E4Ajz2a3vToKsuPAlB2mBLXqfbECgHifuxaQaXJO/B5wnvRNfCYWLhzhEMlyes6p/B72Ob/K8XqD4NmmfTZ0iK0Acun4A6PtbSCXwv1T9x/XroyTqZF9lgK9NdITS2M3IJ2vb1vRwg2a6vPw4p2iQ4WkIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740675534; c=relaxed/simple;
	bh=GSfBqAv9AC1nUf5rz/jcbAGUF3PAGPIoVugQ2rGtUxE=;
	h=To:Subject:From:Message-Id:Date; b=PExA5dAn0PpiYc9KJzKvK8KXwFtbDOJTpDeNMBOqTlVSTbkYPcEwAyQ5adgZ8xUnH8p//BMbYxe0lAPaBdl5KaV4yh/7RmK0vlfrd8wf5AthGOugAss+RfhzR7fdjvG9DCI7bzLX9QrDSH4lrwG0D5jMG51qH1DMANR5UsKJHCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG8HzYj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG8HzYj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAC4C4CEE6
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740675533;
	bh=GSfBqAv9AC1nUf5rz/jcbAGUF3PAGPIoVugQ2rGtUxE=;
	h=To:Subject:From:Date:From;
	b=mG8HzYj0iHad8Wl3X/Sp/d53fh3b5nX0929eib84RVHgxQQ3edN3w5ZmN10dm6RQ/
	 bVY3eo+yDPr98xZcANmC5OgdkSTd4PnLdOoRbJoaCeytRXR7+BMZ484F1Xm7MZqlZe
	 aJkxMoz/H40IVGT/pBrnUIZ1LymXTAd3DVt4bUTIIICAKBxcxrs6RYKkpijThpqI7x
	 4dtG+PAT+9JWezU6bMD8KHIr4yRLUP9qx4ooOp5h+JZQwEEDdoEbt8ElRKWXbwALCk
	 7hyF+G7DjlpUAIKvMDdfplxGTJxBRiM+eCcuavE+IAhmgL4depmiSOL4CSWPc41/NJ
	 OvDJ5sIvhKwVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F55C19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 16:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174067553361.11624.13929168530999619842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cebabdead88e343fe1b229c132ec77735ef7dc11e584f01b9b078b6372326f6
Date: Thu, 27 Feb 2025 16:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740675533
