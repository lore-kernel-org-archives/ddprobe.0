Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9A18BFF
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DEDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668711054;
	bh=s/pYz+xCqknJ4ddUqXfhGh7V7j3aikqgBSbgQY10lTc=;
	h=To:Subject:From:Date:From;
	b=k+ZuYRbvoR7immiGwVLoh1YXUcZvJ1sc5lRnMbYo0rfYyqcG1cRORSdzShfHoxcvn
	 Gom6Dhb3LEg4zt7m+BIqyUCP/EypSV41ne5/3iZAPXROibyQuaXw1Msyyjz6w/Pldj
	 5jrcg+aY5tNXwxOo24yjGus0dc5X3ZbWdVkn1fmFMC+HdwRL0Dd0+2lHtHmDNoqFvs
	 jzAJBA5MWgeYyFKly2aQl4iM9cxv6vMII+Rm6L5yCW3bMq+oYRIcZmPcNAt6Cf4xq0
	 7185X6CaRKuOYDPot80VxUU8lLlO2f/gINOVyI3xsFD3PK0BRcy2sYlyj+9iz3O3HD
	 7HV9qAcCYDGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59120C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 18:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166871105435.3062.13778521745582995939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3b5487e9c4aa93b8b7f11f55b5daa6b0c2d688376f4bc505ab092f2bb1769a
Date: Thu, 17 Nov 2022 18:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668711054
