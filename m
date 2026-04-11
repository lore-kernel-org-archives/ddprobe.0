Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A392DF128
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775881654; cv=none; b=S79PKuwME95FAPxPdDOjABjfpDQ8NKpDPQz5ebjfnjfcOCOfhHBl6rWZEYSF1dlUxmuLpDVaJeAi9o0xbQww/7LRe6+vG92myret1D+kqf0y3KZuSiAulnuvH4sd3Sfnalhg2jGW69R88DwRDbhZPloYvDR7BMMI0LsXFit2tIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775881654; c=relaxed/simple;
	bh=6EUgU1uhjeC/4OfJDyWL+VF8J4BfwrcqS2/EVpyui5A=;
	h=To:Subject:From:Message-Id:Date; b=OOs0zxiA43+RoKxP3Z03tXz4c2V655EFUi9ESQQnfK1rF2C9X2fJrbMRgRgXDbyLqLw48nSGXmak/5LyYVl/23+QsKX11pmXUqwtPUwj4yD5Mv/WZ0B+oVPN0VjYT4fNWYoxIrAQrgEEuL+56/rVYqIvfiN3U81fNJacuNzLAHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSG8fUQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSG8fUQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3728C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775881653;
	bh=6EUgU1uhjeC/4OfJDyWL+VF8J4BfwrcqS2/EVpyui5A=;
	h=To:Subject:From:Date:From;
	b=LSG8fUQekPV1KkyNrOnGWhMEE54TkQej9OoXfNJUAEvWZLYdJhNdNxiPAvb4K2XWS
	 fD1pUHkOhgGvqYXEcxVL7Bg3DfFVQTNKz8U+Wq40V+FZDONo+8olwDcgbQpiqo3jKJ
	 wO+GxnYOe8oRh+kA4VjgBbDb4cMonheSFdC4Ckkt3lhCPGguUypc6VC4oJUtx/nynP
	 z7TR8thlbekugupTD69cQQ6OVEz3QpvK7qb9oLX30FNk7J6AbWIqpNm3r/9Ub0VEyl
	 yO4T0WszdLobqXi6YUl56rKEijpQwL1DL/5dsuRDU62p59CKHZ957jC4+qHmGxgpMs
	 Vgl39H9p0FWFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1ACAF45A12
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588165369.14511.2139545634078955050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8714edd17c96fbba145dad92e048ff1bf5f872d59c5b4204f03fc90eb6b02574
Date: Sat, 11 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775881653
