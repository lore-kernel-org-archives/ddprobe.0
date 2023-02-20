Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507DB7ED
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ABFCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676911746;
	bh=nuv1TP01D9frvUxcwtkPGfWWIyFnIkqAQeD3v3eYBKQ=;
	h=To:Subject:From:Date:From;
	b=kEBMy3EPvcafr6zp9NTV83XopEcL5mqxRZtUSY7YRPfmOhrIAFpXNfsgA/9baKVjR
	 D9NTLbGvc/vPXMoeR73/xyXbgSWYx+WAFq5IcCYqWMIrO4puZm0BW4T/1HG7kVOT3R
	 QeQco6yRvDmZNn/yrwWne0XhhfKne+Lnulov5Wmpi0EvrWlUJ674aLzoyWw3MORnzG
	 hvy1CJE5OGzgNN0R2U51GXoRTB2tDqko+GFopH+wLqbOf5UpYEhi1yLxuSGpLEtoER
	 TCDn++3R4k9uWz4xScY8XTfZZ4nJlKTMvt0v9dFtEakuU9UO4IyMSbpu/rKYHKM95p
	 55mQWhiml0dtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D21F6C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 16:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167691174582.16349.8352161549838100959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cab6f4bafa4275dc95d6709cb9e720c183d33cfa0322db1a697aa6a993be9e6
Date: Mon, 20 Feb 2023 16:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676911745
