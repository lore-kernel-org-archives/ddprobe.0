Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F00C881D
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 20:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4449C433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 20:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675281965;
	bh=xfIsdnf2CMUY6dIw3sXKcGlFh2htArgFsHuY7UrdhKY=;
	h=To:Subject:From:Date:From;
	b=SwhyMmM+p74ojMeiPLLJXo0y7+ttZmc/J/MrdDmar7oik247mYZ7h4ipoeNBMMaYR
	 V/eD2mkQytbYnlvzJyf1LawEnllWzyWv2ppOwRKUcScbJWi1nBclEEQYQ16Z0fnGrS
	 TWBO4UDXNb1L+7LL438weORplJQv6eG3GLI7L3p4GtZjSksvHsHy+2PcLqOAaPbKBS
	 iMKLqbHFR1xGQ5Nm961Nhr3/sDYaqKQk+b/4QHC0kYKVdbtFzjCP20u+1exQQyLOrm
	 MzDcMZDfdUPODxR0MVw3GjYE3GoWYzqtsT86cG/a6hVvvizREZNj0yZnUhBGdyruNW
	 /lWTdGZtUqG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2C5C636D4
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 20:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167528196576.5426.1704433123430224583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0152de1ad9ddb3ab45a62c93c8bb53b1d4bf624149156d028706f19a1293e5
Date: Wed, 01 Feb 2023 20:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675281965
