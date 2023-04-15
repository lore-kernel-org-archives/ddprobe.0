Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526D8813
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0B31C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681592046;
	bh=yv9CwCtUgrcOF/oqi3Xka6FBBeWZ8gg78fIdSgTV81A=;
	h=To:Subject:From:Date:From;
	b=RG5wOJbTb/OtnUsP+kiRti2ooXEHP758cUknaBv6yLf26QavnemJJfkwXC0jnO/GE
	 tIowH3eOOv/mpUJMPTEwgh8wk7qK7hTUaxsC9StpecKxYTLx+veXvs9IEkCtl60nJt
	 BaBa1N/BIDRbWorvWibQjlVDAv10BkSIoxRjSZof6bumOtGSnB59Mc85VFNWG5OseZ
	 gbh69vquh9kjWOsyvAx3nIx5/jY/xv9k1umISssT0oO7s07hsAxPPayIKTMkPqEjpp
	 fJLgohYIUEZNw120lcXvL+QWFRfABA7AwWXHlXuw1sq8XjiEb29gi1iCv+yTAHdIw7
	 aKuxexCGOa5Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17B4C77B70
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 20:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159204584.25785.17759465277400624173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 022846bf53fa114fc75b6a0f5b2059018b9b05aa6d8581c54f136a9613ae1135
Date: Sat, 15 Apr 2023 20:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681592045
