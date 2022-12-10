Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDD8BEC4
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F69DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670649687;
	bh=f4GNhmkQ3d2y2elSEeOEue5fcM+V7b5yU2umqdowIP0=;
	h=To:Subject:From:Date:From;
	b=HGU2MAHdhRQnDArkhcaie0sFt0rlMvWA0aB5ywR6j0VSfiB6ZDRnQg6uDynGnl/m2
	 yhGnYeP38Gm7Vzp/EJn6zO/WszZ2lEGbnZ4xjwoGLdf6iAltJaFW47o85DjI7edNX+
	 DsnQSvxIk9zgx23F+EECoFm6tcUxM0iaamSlm/nZySBVj+J8sabMv0v4XRwNb1Ibkn
	 ntY7dNKmSS4mNUAzH3TJIUOugyvXmYs037RmwxOLfyLq5jLS9WXgy52tXkIeUgP3Lu
	 8w+CoR24miEUSqOwlWPNU7+jDRm+sjCjJ04hEw3hwgo3VnBlzgUeK1nggdRqcrbwI3
	 gi5lAa2Evjewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602B3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064968737.26072.2830547021491975313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d061ae6788adbc51871d4e8f3e60d7164f66966c3ca994bf5b8fb8cc66725164
Date: Sat, 10 Dec 2022 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670649687
