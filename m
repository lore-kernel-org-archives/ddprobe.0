Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3E07C
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C258C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670029854;
	bh=5HS2wCfLEi8CeQCEeZ/XZ2WsKphEHXLw15ZfXGcItmY=;
	h=To:Subject:From:Date:From;
	b=D0B7LEOor4gs0nCeqqLyeptPDOr6OKfN3x9qW4hhJYoTNOQKOcezyw/SMjND4KMEm
	 zypcxfiTUzcw0dW0y7ptaaiZWvYBVkZlLNIgglUN+uWeX6xu0pROz8f/mQDD1Jkxki
	 1i2uXINCym9yspS5n+bqzDmCO9qBd07sq/V9xfer6Rm+vgy9Qju8hqwqoMnlT9nwK+
	 sv+NutqWUS5GloeJNm/ywjs58jI1wPkH9aYXYIPArFEpKYvro6TAVo576TXX1Ujot8
	 vpSVWE8m5lhz4ABLf09TYYaVdfhcvRfsurR+WmZvdLHQYdzUv1eto/IT9gLj/41q7x
	 bcOVoHO3I6YtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53887C4321E
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167002985433.20148.15787775912780301455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b9e25fcd0971a4319547a10467bef268b3228c36bdf820ac317eef767ff077a
Date: Sat, 03 Dec 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670029854
