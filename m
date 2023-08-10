Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E503F1E51F
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 10:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDA3C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 10:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691662988;
	bh=D7dhWd8jNLZp+OWFieyXLmZuHn6RKiwpu1D47lKIIc8=;
	h=To:Subject:From:Date:From;
	b=dXW1uOY5N7CipuxlGp+HzgY/BeO2QHZHkHBbtXDwK6V+h7Vw35gikGyUO3YY56GYl
	 Lyq5ImkA2vKPTQ8DrsIE6XGDrRSbXx4tC0reAUjNVrvZ3FasrEO14q4FGXYfIIyBVi
	 nyqNgu/tvrFTIqMzirDncJr41hdF75NyOczei6y6OkpiOXV7M4l0d0bY7vQnJqWgnH
	 Z2PyczwjR8U2ivDMYX1oQgNQ9WO3gkcwxiKYk5n4psCeN3A2VcePVSFQ4nDn8L05tO
	 cN4Ffs+jXY90RvLmcwUtoxeuJ3KEwYCATGWOQBebNaCRdJ7RERAZD8JTe2C0g12j0b
	 exatrxwQVh1Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E8AC001B0
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 10:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169166298866.27614.5658106830972081073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1449dae6f0872fe46c613340491f536804e2ade2583773c3e17aba717b2a701d
Date: Thu, 10 Aug 2023 10:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691662988
