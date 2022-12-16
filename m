Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D640C20E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89199C433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671199287;
	bh=FHCfeCZ66oMULJjaqHij/XOha3fNACvtUWCqX7AefX8=;
	h=To:Subject:From:Date:From;
	b=B/iIslyw8mVMNr9FSj5fBMQ7Fx+ha/FDzqu7aXUabQNyUkQ2BL9C/DjxofkvQ9Mmm
	 bzopJEXVGlWRxKdk+F7oV5u1NynZWXFtIrEOZvPjY+5DxUifLVzi2d24K1FVeh9ynU
	 7N6nC1dXsKVo4c6o6Kcq1e52bmDqrXjn4kFEIjfhdqiHClaoB7nwR16xh+wJBpo88f
	 tniEEv0FlkcRCupERKXxhYWLSawSX5DDS48Ma+/65jdCrrGrCvW4rP2lFOV+kwx3yK
	 3IVzdUUc5eZm6Y1FpTHs9U474/icuuiM69Wwm8TtaYqYRrU0XzhCueNW5KqIgTs98z
	 6fllcDD3RChPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B93FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119928741.20239.1209101363452212528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105dfbeface416bdbdc02b2fac2918b8fcc4a918565459f0703eae67fd3d639f
Date: Fri, 16 Dec 2022 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671199287
