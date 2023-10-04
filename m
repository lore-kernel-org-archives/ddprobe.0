Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859861D692
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 21:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5v94Qus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99F9C433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 21:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696453568;
	bh=enskLlzk/MyqF5i75LV/iyUkuixyxYvOntrO7Oo6RZg=;
	h=To:Subject:From:Date:From;
	b=h5v94QuseWpUvfCOF5alCsS7M9ciohb23H/xpXWYKwjtSL3v8eafSzJ8b7cTuquxw
	 WExLkllMjh6KGCZ9ndth+fjjEC5yNHDgjBu1Uo019jyZexXiv2iat/sAC1VT+PVD3D
	 MD4nY86iZLfXZ8EhnvcW9QZdHe00MQ80Qrtzh3x2UDf8UEEI1J2I8a0FfQBywE6Kjk
	 Hv/s0XWDlCgzCHPPltXj9ZEauLb62RTSgwUJOxvpHUxkDbrEAaC2+AnT/UUB+6jq/k
	 mLCW/AldrRoXtINyPwiXlf9Kps2rmjTRK21c9KlQyhBNVbxtCKwJlwUA3Qsnq/XHjr
	 ys1pkfRrMBLjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA70EE936E6
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 21:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169645356875.9512.10210179732803090537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9919dece4b4da6c90884c845eb9998664a046ff123b87e8961b25f2648e138e7
Date: Wed, 04 Oct 2023 21:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696453568
