Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A03AD49
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84082C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667767254;
	bh=hWyPwG3PC4y4+z4vXeHuRyk+XDY0HHXzqvQoWTCw7kU=;
	h=To:Subject:From:Date:From;
	b=RCAGwb/ZaE2Lyqfu6Vc2gkheqV1lpfqyMpoz8G5fjCuUl89cuRnN9HdUKwkEFP3Fr
	 0vZ/8kAETWAQRqkAc98dAlWvrElLYdHBuSZXrW1XsbMGYKTVDQdkbfkDiMz96ZvHzo
	 Fr0zKC2Mo4Zegd+eZhdOC1fUtCFCpcsfCvXQpuPXc5+hgyBll/ZQgrgaIh+5uJhAlo
	 sNuUeuVvZpfa0N8/yfY2Whb2eomOB6Qiuc1n0BXNgFBuw7Sh7y9qcyazkdq+I+7rEE
	 h0evygtmJ69hSlDbgKOBfmQX1LJEfDQuAB4W0C028f6ZpUOjIWGrTzeAO8H6ujnwp/
	 fleFtXt6lpIUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66F9DC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776725438.11333.14943735698626556632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1410f52484f6dcd4f0003cbc2a9eab3622f9ec8219dddb81728f28a0bd47bb2
Date: Sun, 06 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667767254
