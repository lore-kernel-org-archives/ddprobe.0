Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9F43C28
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA174C433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689051428;
	bh=+MyOpRB5ZlgjH2s2ppXXIwCXVmcmUj0bEjpnO089xlw=;
	h=To:Subject:From:Date:From;
	b=JAgLZDpR7uUtIFyy/FTQakbWB5t3M71bu77Nxqsv/ZfWuLxI1umzObxVeS5uCSOLE
	 2g5B99pFNUCqGnQeOV4R1t7uKYir0MTLJ2vzDrE9rL3iTddmWILCDuae45+e/KS54K
	 PBH0zEbpNjLbR8RbWEgizz1dg5TPlZGBCalE3BpB/ToJexVaEYGPouOCpP7qQCxWCi
	 LiOl8m5LbDzBOOsHvN1vuLmDEqR+cErWl5ozCE7j4P22TLLZayT2lI0qDivQ9xmljV
	 su9xTe1vSPeaSPEoeZRpdrTqGneF3eu6ZZdoLDTm6nBXac9C2O62ijviP4TfbsBbKa
	 lWOt1CkUVXAdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E64EB64DC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 04:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168905142871.22759.832731158183970379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d5941c6788de16884b9d8a4f50c902d0d4410de27a061fee6d023b2407e19c
Date: Tue, 11 Jul 2023 04:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689051428
