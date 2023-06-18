Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D301A2A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 07:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8722C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 07:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687072808;
	bh=wdnTBRhh5u/FYL7yYShKGBD4rbsjbuY9Cj3oiXvLYPc=;
	h=To:Subject:From:Date:From;
	b=M6rIH+zdlAtcv3Y0d1HYZRxe8DhsMiBHYlMhxa/J7ubQWWQ0OGY1UIBX6c7cd879d
	 0+cP1A0eOzVVCNPTvJYYdPpbT5wqi5kFTUhjXrqITmm3gHCup0hRUhvR8lgIz+JsUB
	 jFIio1c4s68M+JLBk58ttrrsGUO6a8cNYlDi8IPAH4xdqL5dRo86sbrINHYvYNcaVo
	 Z4TL9sGkIBxz0zT9rKD99tq1qy1PsvIFlkwWnH+sUxtHPRUeG7aLqGZ+l+Alq2pQ2c
	 CIaK3Y2O3wrLk/pUB8A7TzoZGJaD8mulY7Oq9yoftBk7mH/eRW+uT5KIC116nYG/GG
	 ojk7Eny1z/JtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FAAEB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 07:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168707280867.27745.4147164128800282653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01df19794f094ea4adf90e0599386ba9e17ef5489c3791f974a87375aa96f6b0
Date: Sun, 18 Jun 2023 07:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687072808
