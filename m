Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCBC07B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD9AC433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666389653;
	bh=4OD8N90qyhEeU3C5VpE+gfUorZ0b+f18kysANj2iEo0=;
	h=To:Subject:From:Date:From;
	b=mVHKiI3nY2okDh/eWgeFy5k3d914WEX+QswV+p5p4xlgPFv5gQOfGCO17oq6BtiY+
	 trJOmNsayacShbigWs0SeWR5X6A3SIIfWRwXXybwauq/oae9Ty2/PO8HoAQ9pgEy9N
	 xrHfUSmivjtD33hKamKTcA+knYZCellLvMpy8BrtUZPMqdZ8wi+7271MG5Rsay0k2P
	 1kaLvOhI2hAT4VpBX08HfuoDCtfPcjahCPcocw0KWGq87oiplyrGArC2A4D5GjlfdV
	 TdMhTum6ncHiqSZ5v5DmXqUp6hJUD9alOsXQ6klh/cRJ3SjTSwULxBtntjsxGU+9wa
	 3DGcmB9VuBCPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F68AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638965337.13351.12383147097953070307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c25211c5cfaff91f960af292bd9f8bf74db44b3ad6e6355f6882b8813ecd4fd7
Date: Fri, 21 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666389653
