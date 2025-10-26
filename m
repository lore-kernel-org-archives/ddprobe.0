Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAF21E32D7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761513594; cv=none; b=iwoaP0fgmW3p6QEO2fUs/1bY9iJAhOv2ZCveahw1aobwrtI+dFM1NkCRcUqlJjACUN9Xc9JSHjs631sXhVFzuyThNk5ta+8et3Lehq0K4ZeV97b6dLtNwbiWZQFfOfDV7XZNE8lMVmjH/lPMKRx1vyp9UrXcoFNpbtrPlKHGk0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761513594; c=relaxed/simple;
	bh=/9Rhbuo5k21xr0yn3h1P0V7r1bcMy8DGoblv2ZFtHXI=;
	h=To:Subject:From:Message-Id:Date; b=ViLvWzMOG7dJdcfi5s2o4L1+1LCaE+WgCdEb3Yy5p8wO8jwS+XbwG/vHnyE8+PyTOFX/F18oG0b5dijzrc3TzyWy5B0fF26Rd7YLYW5iqskeJ+Cx5idn0Td9pgJ6fWHpU7nn0FMsqjIGKmuk85v4W9Rvp4k/IY9TyqvbRSSc3B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgjI+PYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgjI+PYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2189C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761513593;
	bh=/9Rhbuo5k21xr0yn3h1P0V7r1bcMy8DGoblv2ZFtHXI=;
	h=To:Subject:From:Date:From;
	b=TgjI+PYluBhzP+pzkY/0qYn6ro2AakPiqAkcDNIFQJobO3KCje99jde23gd5iR/6S
	 mpEzEU4PSYoveP0wi/KGptn4vgSREXmyZlDzFOoP33Z/aA3S6ultNi3gBllZhGDceH
	 4toJolc9y9lMEsf6ZyOfzVuG8gkNtq6BDzrmodReoMGN+DZ6QeXX+96e3kC/31jQaD
	 lYYL+uTXJL2DDhKHlfhIpghlCZjtNjpLQc9W8ceDWOSLzoyqeIEDGJpOEyjAycXBm1
	 Vc7G7UxlDOdDv4o5sMuEoQPQBhFsd7UZp+LI2WC0MCNZOUTr/A0sdPHLXKUP7drlOU
	 SdSIgmG7yqCnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A06CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151359358.10314.9095447090996344571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f226c2f0d83581b79cf8384d9985c767d2b81318a07d93d68f092f20d067dd4f
Date: Sun, 26 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761513593
