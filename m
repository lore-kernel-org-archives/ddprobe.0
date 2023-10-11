Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C02333F9
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 04:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0SdSeqF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEED1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 04:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696998428;
	bh=mNuh28bxkAa6VjaBxYAsXg5vml7USV6MaD7CyWll9Bc=;
	h=To:Subject:From:Date:From;
	b=a0SdSeqFrp7k2zg+8P80y0UgQDijJiuuiEOmAEUx5QTbgsLQiPlcTfymsWpvu+ASi
	 rl0agVsFuNPu1klguS1G0jcR/jTdv1X8AwNKssS+wWV7gZeO+kp68mzMg9jNjMzGVE
	 OrJ99idlAdR1m+JKQ7wICb17lc0mjJI/0cvIO8YH8PuCElMLcX4Xvz9gtAMgG+yIHJ
	 SASV8bhOEOumJTlYPw5w7WZWinYm3VeWIivOA+MSo2dItE7i1GSO/3lmNaDbLN2FhH
	 NF2xZJZRgDG9asMzhOUS5j3Xlc+urB+KHludUE2kfk5BeZ7ERKISRA9KdKWYgy+QOx
	 idWRd6pFNaP/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD28FCD98E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 04:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169699842869.3234.7874225230518557722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f468ff443edc4819a64209c2a6af639d197692825a0bb157b5d5ea470cd54309
Date: Wed, 11 Oct 2023 04:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696998428
