Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CA71396
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DF4C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664973653;
	bh=EGYLRPofN/SjCATvC9eOSujRcNPwH8JK1tadI4lhvcE=;
	h=To:Subject:From:Date:From;
	b=t6HNzSGodYl5Tf1obnHvs/PcsfeP7O40w6yI8uI4/luobrk2YWSQh50FlJLXfE1r0
	 s5yPCBWfjgtz5/jEE6Qo4GTYmMLQ2DTQFSyB7iE2T9ObDxuKFM7iO0lkJvQsuBYsjJ
	 ogBdZoDdHs6D5E2l9TYKOVLv7sUBBhd1FeiA7xq+YVIlpzbfRh2S2rVCxmMQxVQMQY
	 alWNG0Wr1jR6QdDKENZZAwI65MGxfujTLb3zeroVALL9dZiwCr9AwpMH387iY94vd3
	 +RhMiVA0rnnbnjk8YJmMh949yeJDMLmTwAysfQrU43I1An++V8XRD46REpTqv7PLqd
	 W6cuqjyPuFT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E853C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497365331.32630.6791078017286347917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1e92e463bc077842581ada41d9505fd42cfd35fcddb0e43a7638e565be0e15
Date: Wed, 05 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664973653
