Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420881FBEA6
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758989394; cv=none; b=d7XDiW0LLZ+nBPC5GMoF0BQeAMjFf4lta6PCxaglrVQ74DMn8LGlnjkdLsdwzPY5lF9ut3tNgGqCp8NwfdxzJKbOVPcQNvfXVpuo+D8aSvZoUGWEBGVSb3XE2925wykRkbIsKyCCTEpiiJflUnjQGoShXl3OTfjEurIqxsZc8sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758989394; c=relaxed/simple;
	bh=CcM3KwJvB4rTDP1yrKu/jTYpBgP/6Ny6bHtgUBcciYc=;
	h=To:Subject:From:Message-Id:Date; b=sg8ZgZ3XweQZQex0RRaTGiul69OsfK1PB9krU7/GTnVJ7fxmMWeKTt8vgoHCxFoqvSuyOBO8PuQD1/IOBiETiS0QLhuL5D/VFZIm9tTokQzSJ8oGCsJwdK9VH46UsjL+7NqISCU9vMHHpMAJALrXd2Ju4pHYWuuGR7DWlyh8rh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQTK3qDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQTK3qDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F8BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758989393;
	bh=CcM3KwJvB4rTDP1yrKu/jTYpBgP/6Ny6bHtgUBcciYc=;
	h=To:Subject:From:Date:From;
	b=VQTK3qDJsj/4P6sdZBrDupvamsphpScrukIy+Kx1LjEB/yjUpPM8QFZoq3zQ4SuD3
	 iFuLph2gcUIB/7RtoWBLcbTMwbM8MzgO2J5urvRxkfOMws3xlJ0BWlmVtkyV6R4jjK
	 cN6xHWy77oZDkLA500c/KYY8S+4TSa9Ms7/KytFEBgQ9DNJ5259afCV40JkFDzZkT3
	 o89+V1bEdYSVAfPUr5TYndBElq17K+6Agpl3WEyAc0JhZf+o32crrt7cz9Etn6xrNS
	 gkNLiL1YFFEmNavBWc8Z8Nof46Sj6xtwiWH6Zs5BMER6v3Gaf0iKI/WqnY4dxKw4V/
	 m/bStC1udoVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0484CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175898939360.32022.15238519185207357757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6398f81460ec12d41e658362a4e74983996b033f2fd22d5bd620dc67c41aa00
Date: Sat, 27 Sep 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758989393
