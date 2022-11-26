Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D99EB08
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B166C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669441854;
	bh=Q7QrgxqkQjs/0haynQN54+2afzvdXd910LoFs3uz+Zk=;
	h=To:Subject:From:Date:From;
	b=G8R8L2wfzTT7DqNsJCxoydHfozCORl8gqxj5j/FviENyQIr71VU8MJ4U/zd0l5QVE
	 1lA0SjRoj87wEne4paQ241hiCDyfXOzEMLaXDkEm+xJ+SiiwMyIWPiBw/th1jm6ewl
	 x9lKcmMPy+UyAW1Wc5oQN9c97Kt9DOgAbYOu1RwXTR4/h48JPLdVwYGpATgwZgPcWy
	 wNWCroMRJPa0KbJJ+HXz7A0nXrZMLt+FMTug2DqohnCVyg8OCIsbaf9ftj2+oQ1Gq3
	 7BymcTvv/XIMY9n2Brb7s4ns/gfl9Tts/bk3kY4PvDp+jlwX5bmi/ljgI+Mg/Rs4ml
	 P8j7VluWEw97w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E9E0C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944185440.26993.12333438225126936832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 610755ca48a1a5abbd118aac3a1f181e3b9e7b37258a39edcd6806ee2d99bad9
Date: Sat, 26 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669441854
