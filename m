Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4058C539D
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 12:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2BA9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 12:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677242705;
	bh=6oJdjdVG82fd40lzvbbxOUTZBSxm6LuoedjwAHc0ET8=;
	h=To:Subject:From:Date:From;
	b=sZw3nQg3oewzW11MxVR7oiVlQZQ9XP5f2Z9yMlcMPotqR6B6/8OfJYwEYKiSFm8n4
	 OKLRdmyqVDjvY4RwLtA9feTMAySS8nvFy9kKr0dXsinG8x4OJmPMPeXqnIP6jmmPQm
	 JgNmVM4985yPIkYN0hdS624FI2Ja3qmbBQDnmJg3WHD/7RSKJDxXm1XBlB6IYY9XVg
	 GM2rilSZVY33IyWYdTNHgYb4cgVaPJ3v9+TLZ2axgDzWS4cNi9iUo6C7mhzNpz/m52
	 wC0DSO1l04z0IxM+/FflhgHUo/7BX1eZ6VlCcAlxLbC+mOHkrp6vlYsNxM+WEIDD0X
	 EoGz1WbDFyGig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64BDC61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 12:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167724270579.19215.8680409597336366934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633ee71be155ba27b6257a677ef26c9bde4210ef2f2c656c98db6bf538cde8b1
Date: Fri, 24 Feb 2023 12:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677242705
