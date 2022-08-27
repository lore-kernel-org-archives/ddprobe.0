Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB90215CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72063C433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661640652;
	bh=OJ1FuPmbE74GqhaYCtJhLhaKHqqnUB9+YRVpgeOYdTw=;
	h=To:Subject:From:Date:From;
	b=CDbbj3ok3D9SugbZ+S4h7fz8N8vxcSs6875owYogEl148lZxn8fcNrYu3N1PhrF/q
	 f14NqYEBAdz8CGzatsZSa5h1XZwqi/sYFk5tFSK/GDsSufq3wLaNO+e7il4Ay0rdGO
	 EZ9ymxPcK37hV9OzcTOkwgi/xFkc6v1UAMc09YzpuId4lauYusVOxk51x9kF/bYbLB
	 MFHzl3EYQajPG3mLdFNyuTrvN2LKqiVAtGAUks2LuAP3R0Br7aLADnoVJs/ublNI4c
	 FzMn/H5q878VBR02zyOP2Y3rgbftnN9+2c6l4JuS/8JSdP9IjFWcANdUXXYODLXvBI
	 Z0d0rYE6emQGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54048ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 22:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166164065233.6271.4483787179774185490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03eeeb399347a0fd593b63801b96cb92b2c909b7ad144c9455d50df98323766b
Date: Sat, 27 Aug 2022 22:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661640652
