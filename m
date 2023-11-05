Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9AD17C4
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuxOdGAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B60C433C7
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699159696;
	bh=VJoWieoGpi2QjHm5OCMIka+aw6WjOydRjSwIzfaOfME=;
	h=To:Subject:From:Date:From;
	b=XuxOdGAol2wm8UV/zY0P3WLz9m2ZcyLfitjMnLkqzpBXsmMrfy4NpqvZB4kIqQct2
	 6JryqiA1+IxbdE/eZOLwnH2He6WantqaqiIjkQDY8eA3bub3UgpciMQR0i8Ap4ClQt
	 mcimj2gyzPaV1qgOqnoJoN0GdzGqZY+BwnYoSJ3gVeospRwnt1ifbc3wr9RkZpzTu2
	 TJOPqOqxE2D+7F5GPslIvQxq/0m8W6rF73xuAlfGjWZJ65WGb56wF575AaZUtJpPOP
	 L/Ws2w2OTxPohIm6LwMICcQsb2VsC7HHUhvfnijRhqWg2k5WM16y1auuSetFLW/Dud
	 KEwC+tXOuRxRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D09C4332F
	for <ddprobe@lists.linux.dev>; Sun,  5 Nov 2023 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169915969637.16031.15545362645911395068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381909dc951fb0cd06853035c47a9c08bfd2c77ffe3604783f3b3df55906ccae
Date: Sun, 05 Nov 2023 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699159696
