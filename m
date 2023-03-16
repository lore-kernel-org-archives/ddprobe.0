Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451BF20EE
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 07:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78AAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 07:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678952405;
	bh=9yLyNzDSLENpXlBBJ6KqPDWakGFPqQRar2dTAYK84II=;
	h=To:Subject:From:Date:From;
	b=ukm93nxc8qFL8IO+lXBNDvJMhLTJvwXvlhAB8xGoA8oZqJ/BrladT6TaWR9H1d2ZE
	 zAYQLfz4WMgjqraPggPG/CZ9MEog59pOtqRtmMMlFfAsOV0ARbAZsIAuxMAhvnLgMH
	 RVIvPWvyLkk1hS748iO6YvliVobJb0lVuLqrgcPONelRoHMjWs3ZnoV2eajH+jMOtm
	 KjMUlC+wZBBhem4gfRP6+8MDhIogvUfPoFQbV3wslAI/B4TMV3c1RSyoM6NGGZnxzt
	 Mn1KizeJFTHOFOGE2R+rgLX6xwPC8A9Rkeigmeu6i4PY7Rk4aoqUV0KI7WcHVoMWeE
	 NkA2TfWjo7PpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B36CCC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 07:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167895240572.14036.6985244169071993219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27bfa7b2ad4b25a5d726fa92a33d8e4a0f6d025268754b4235789c13fcd06bff
Date: Thu, 16 Mar 2023 07:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678952405
