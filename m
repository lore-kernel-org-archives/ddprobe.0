Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6A62D1303
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763300454; cv=none; b=cAP3S3+2A6CM/GnVFUHOeDKhF22Gjf81xTNgL5NgW29PKDmh2DvqjFu2Agv1FMxVMpUQ9nrnbOmEDrPjRcsFo0GXRZLIU8ATjU024f/uDo936OQvzY8Ny79f7xwU0Njmq0FDig5sJAWMnTsMzdK/52zJ8ke3HdMVEwoKBZcs5w8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763300454; c=relaxed/simple;
	bh=90L+NAhF6rV/oXKB/wZnOuGCIYDl0I5Asvsu7BWPNKE=;
	h=To:Subject:From:Message-Id:Date; b=qmH+TrGQJs5w/sP2RqQPoVbOwYh0/MEII1q2u0HIvf39y8lvLrhuIi/3YSG+tYALo4airnNlPpXNQyNNAzpkZn3+FexIkDGtp9sd3C8aIPMcH8g2/0k/YKinxBCDWf77PZR56PT20I1m7NfWTMm+F8L/HkVDcf1iv+Dwo/5ZYzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrafTBdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrafTBdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC7C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763300453;
	bh=90L+NAhF6rV/oXKB/wZnOuGCIYDl0I5Asvsu7BWPNKE=;
	h=To:Subject:From:Date:From;
	b=YrafTBdvgq1VV7rgqgnup6RJeJy/x/m0xKxYTkwPOix5U9rw4brHG/oXl4O1OkhdZ
	 eSMLqNHRJehUCCL1PClV+tmB+3VC7I4JHKgFBeR0KqhdjQYN6apQTmoxjd5X+Be59o
	 G8eeZgq1aaw/cPOfGGi5KIeVMAGQ9jJjxjfh6EYP7jhzO6ZY+3+ht51i6WOStbHVmP
	 mn5fEC1cET+gCmIuVeKrul9tbtsOTy7wnC5UgqSQqubVtzItbRb8shVQye4rcRr5jJ
	 crqCdEiLENHpaU78AXTbS70ZHhfkzQ4ESNrB+Tm5E5PswbH4cKysaqEF4mEZ/kp2Et
	 cefxlzqHtF7kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C9CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330045367.28976.17447866073085579454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e646ad18e8ae404a5604fb246c012c27ec022fdd0054be802e0fdd96361dc97
Date: Sun, 16 Nov 2025 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763300453
