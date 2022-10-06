Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAA764C
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7251EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665037253;
	bh=91J5LpwakPsZEUN7qYYeHHdabMRM31cXr+36gooTWzU=;
	h=To:Subject:From:Date:From;
	b=ABocLPXH3T1j/8U3SAqiCM9lk+KK8c9VBdp/wkxbxiYfsA+s5u/3BPd0HmgKa43xG
	 qpUBqKwPwOq4DcCCqzsl2670E/fKMPsmnjmMi4ymnODTU061rTmNlvRD7XBR9YP1/c
	 NEpiODOlek3MT6mDmiNz3LKvdhSd1XFyL/6f0gDefBBto/j8SQbK5f5afuXKWH8d/5
	 UkFSZlSpFU4i52x3ukoYgzBeH+T9wpT1PfNU1yKrjw50v95xpg5Vk2nyJGCadXGjIX
	 Y9Uys2Eigd+yHTmf14bBM2h4lDpcpVr0OtFFKB/UrEH417L3VQp0/iU0rmpe3FE0Lo
	 nuQsXclt6AK8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55BD9C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503725334.352.9156533425976302496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85c9a6dca37f5eba3876aeddcfc4d05190d20291b8845848785efd8c9ef530d
Date: Thu, 06 Oct 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665037253
