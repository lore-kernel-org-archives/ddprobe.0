Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9501841
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F6F6C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666919454;
	bh=uNU11JXWPoHrryXRHm+d1iqZ1cCbN+ww47gljIwSzg8=;
	h=To:Subject:From:Date:From;
	b=Dsmpro4B0wbuMVDDG+4ICoQzRxNhwb4D9ywprFOsGyR9TfI3Bb4Qsy+/UYDjTb5vR
	 hxatDUJfAVNsDfzmjanj18Hh1ckcj4lED20CXE2N6bQ5XD/27G6vLNJl01BVstb4sA
	 LAPc6VGWuFAgzpIoTBHFpcqsgKRJlEGrAbmKsES9ztd+YH8PlQYXnFuDEwmjU94/iA
	 9TsQvxOpW94xLB/yAx7HefCeCbSZ8/A/A8nGTKisEjkCrWpO0SPKNyPbShDB9UTMO/
	 VPRVH3Ur8nv7IZCc5cZuvTZKl4SRwK/HC+2aN3C/RhWHP2nbdGrQBO55Gl/Ffrlwaf
	 QLhevlb/8Craw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53899FA373D
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 01:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691945433.31596.11120059800828947577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166e6cd3d64aee9fe672892ae47eff2f747118f97a1e931f9f1f5a485680ab51
Date: Fri, 28 Oct 2022 01:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666919454
