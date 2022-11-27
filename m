Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E217E2CA2
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA1DC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669568454;
	bh=vPvSVkg8akBKhrHda1hxuf6IH/WsGEU6c8nQ3SrKfe0=;
	h=To:Subject:From:Date:From;
	b=Gt/uBiLI1DuRY11RtVwqoTMrW8rLLZlJ/vGzMWPSl04dbjmjMDLM3TTwdeHOOEzO3
	 rVJ4y9BHXbNRuQr1BKB5schMZunX1lVelbU3NN8KvrE5+8IYrcAXIi5sTSXZMu8dhH
	 qQX0a6vdbXHcuuJCoiyCasZuym+3PH3H9bJHtzYrxAzEsVSwIk08acwUwGWKD3JsPP
	 yK9Oy2Amh+RMSXbt4xck1qphZjcACUVDgEpVEW+P6xP2gFylZ0Le0W3bf7KmNd3mtp
	 u6eEaccSXSvFq5t3oS2GYXCZjSsR9AyGJpPzVgRSoX89YUjIbNuF8GxcKmHxJAJLpH
	 YsmivohFxuwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622E7C43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956845439.23308.715442156419995005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44477e3e02d434dc75d0e7a23695ac4e61b414bd8ac05e17f8888e683c632e06
Date: Sun, 27 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669568454
