Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C68A1CDFAC
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743767994; cv=none; b=QYMhVFEccvcI21G9TRNrVzm96g60mdYjpfwEn9Jx8DKWAfKVQwjwgun0P2nc+mZ5iUBB/6G+7c7EPExOMXjKSIZSYejYh4yvCswMhON+qWmw+/N8lAbWv9jFFfeR26B/netaeSBHMM4qZvoBFG/fOWKirbuZ1vjElaU1xYeBY6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743767994; c=relaxed/simple;
	bh=k3IWZFqQhnuxFHEZAmhba+/uTcy0b9c6rJnKv/tnWew=;
	h=To:Subject:From:Message-Id:Date; b=I2RbLYeBjdcB4rXpOxonVgRpiP7GHzhyrarkZEMEMM9JgS1wXrhRBKB1VJSLjBisN2+t49dMqfGQCwCexS4xR25VBnepL1S+j2dB+kyUTwXFjiZHBB4wnoiMVtcRkIpayOs2kBd7qfXgIALVoNUA4UDh8HGlKP7yh3J8tJSSW/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8sCN0QC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8sCN0QC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B253EC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743767993;
	bh=k3IWZFqQhnuxFHEZAmhba+/uTcy0b9c6rJnKv/tnWew=;
	h=To:Subject:From:Date:From;
	b=Z8sCN0QCPzZDq04fQ5k4n41XGRmxSk3xiw+EDDqfJImziFabZYbGt2DLrZrHXO7lM
	 AhEibQskZQJ7o3bOQaLxEjjQwYt5OgWuPn2a/qsBlgoC+GALO6qXlj2Dh4N1temfm4
	 3FBbM3BdgEQplzVeJIbGq9yixCiSmFcVka8cTgAV6C8Ocxb6CN0BH1FyVzKO/WPw62
	 kb7HCpXWXZBgJSJ4oyXx/Rti7WDkkYyniwEcug+8bZi3BZJAWDiUMu1khO6vgFJBYF
	 ZeWJYaTM7LxLSN6WMYa1wYNz876ArvJ+6YHmP7E1H/3cPvlVFO4SIA5vTPFzd23Kyn
	 AnYzRsDMOK2yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B95C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376799364.5555.5189315385204514529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76e489bae1768d24d867236e97bea0f21c55344fba3c2164edfa02343c7fd55
Date: Fri, 04 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743767993
