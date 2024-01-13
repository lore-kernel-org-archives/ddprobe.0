Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1359CF4F5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3Quxc6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8507FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705123696;
	bh=67ieYGepDV0DlZb2tM62LG+ZcEghfP/xS1zALa/ttwQ=;
	h=To:Subject:From:Date:From;
	b=h3Quxc6lHj2RL7FjrmHg+tW7TPY3LyJxtQHOjSX3Uv6jeD4C9sab0Z41EDbxQM2u9
	 iNZcluksolHyi13MLuzNW8ENdGkIJGWgUCcAs+cZmx8m7SiwMGh/ctKAv1NvR38/5+
	 eYk3XFwtEKo7Upd9IoZiGqZPzZfQoBHcdgmxZbxjx6WNiRcU6t/Ae8TwXrp0Hv5zwR
	 zYKicj5nxTNK8oEMx3TR2ar66pRHbMmlA54vOCCgGINxKkLn48spf+J6Qmb3xQZUVV
	 so6QZnbzS1zBUop9CLjupvAm32Uvc676Luuk6GdlHnuDOKFGCLMDjlT/DhI43TDf1o
	 N8zCr346tNrgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683BAC4707C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170512369640.24097.8810837355419329042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5abfbac09e91e1c8dfb100d07e50e401e265018a9a8d3a6db4599f3fe891225b
Date: Sat, 13 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705123696
