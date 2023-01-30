Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399A779D5
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAB5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675109585;
	bh=uOUMyjwkqmS0IK90PWAehN1bxfeDBTQ/DLiwL0fzdAY=;
	h=To:Subject:From:Date:From;
	b=QyhX+eh1TCXDD9ih+iJgS4d9Lj+p1SkaHkV5KnJ7IMcvqGsr1LkqXOLkk4BGc2EOJ
	 9NRM/uzdzY3VDQ9UrKUzBitAd82t+FRKnEZHR2I15ZFLo4I0h+hE459i72M2iK7iXp
	 LrpkG9v8xJ2/8jVw6dAxDwVRN9CaSNEMq4KfJt6eWCH2kjLLxk+TREnjMIRefI+wOp
	 h78myFcZDnTI+szSZxgNc+nGKsq1lrhDDZEyvhdX0r4/FH0KbYS8s+iNnePVmOmajy
	 cJZOK7+leTVuG8GvKoV2TQCa08p2l65EcmGitbUlEBupNczxiOts6G32AsApK34vbq
	 eCZTDmgqdy3JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4A6C54EAA
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167510958577.19403.13849422773638189694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007928f6cfdb4a399435742f5c5b20ef497596eb375a2d52dfbe1770a34ca5f2
Date: Mon, 30 Jan 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675109585
