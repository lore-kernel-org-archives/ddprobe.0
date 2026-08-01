Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E89542A80
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785610834; cv=none; b=Dw+9Hn2ORzbqxktoonglM18xFXO1ljhEr5aZ6U7HmGvUDc3Jvy4HV71X51cG1cPQLXhfzaa4/2m1rzc5aTy3QOA6XBf4XFEUyykutoUiQYCp2rLPebWUTYp+cbZhxKfIUCR2YcBn8ADjKBztWPpS4V6difBu7oUUoy5At0ciqKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785610834; c=relaxed/simple;
	bh=b7+yRPK2mCPP9sgAxi5HGdOsmnUAMBD5V7ti0OktFj0=;
	h=To:Subject:From:Message-Id:Date; b=Bva7rOluSO5Nq/gmvS+6AITntnlcu2FSogiyIIotXhJoSdSjFj6q/RhgzfRBKgI7OW98Mq/dnjyBFoiN0/QJgo7l1I0Chu1PPe174/Kzn4a+qOHOkSGcHKZN1OAhUJlO08yAOSMQRn8fOJSfxlniP8b0Q2dImOmx/IAcLIoxa70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9XdK+BG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9XdK+BG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBF36C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785610833;
	bh=b7+yRPK2mCPP9sgAxi5HGdOsmnUAMBD5V7ti0OktFj0=;
	h=To:Subject:From:Date:From;
	b=q9XdK+BGXKj0M0lEvxFTIPeldG84yKTvrqeKDkY4JZq59phVuM0U1auhZW4kotQ0f
	 ujk3+iHPt/V7FUj8aT/PSaHadNNxwhbp4Zznybg3wqWrzv3uscbdxuha16XRgg0h3Y
	 rvIQrc6QccwlnkN0YbJiw5NyflAiBKIXoAcYbMw/bcEvaXcI5Nm7vOkyYWCKVyW6a7
	 HfJDIU6tFsIxHVkbJJ8pvuxXcUGH76CWbwbsDlA52fYjG4A5g3jfos5M+yS75NiZo5
	 /ADsmVY3T0rVEbUM+I6k7izG8LrgcFxAG+XBSvBeIAo/pDv7YjgPw/32/cHOO8F8BS
	 KTVhG2H0MNaGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2DA5C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178561083371.19337.5677363915281029506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf4d8c563cc18b351b198db48bf37643d8ea6d1c74f4d1eb1d80a45c5697c23
Date: Sat, 01 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785610833
