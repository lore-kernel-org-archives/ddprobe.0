Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C805C97
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788E6C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665350453;
	bh=P5/MwxgDYKqewQhcoaQcIov1libBVE0NwF0jlI1QnmQ=;
	h=To:Subject:From:Date:From;
	b=jkPs56kEMk3QPwF5iTBWN/zZAzsBdFoN0WB5eaTzUq0okNvpZN5OnM/sfQvF43LIt
	 sMzCfAQ8T8zG1Zd8BSr+dLvKZoMlWdmArAokMr5Mj8rqH18Vp7PBzlpSwYaMSwHPJQ
	 hfnG/zWGXvVOsoFd0hR7xgi/KsojtYWA7/1B9VsQMwf86gkENpjv6+cNxUegD22Nx6
	 cfxYPlV+xtTbC0QnkwnDq+r0YIhOUFRRDuD6ocs+MyiiBcbi8hlMwNeuwP+KfeXifk
	 NsFeuv77PFjT1U0YwtnzTwytjl8DyKZdsG1jJvQZmFNolRJeG7MiVWoaf7t0MJHAe9
	 SgI48/7sYf8YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609DAC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166535045337.3383.2705935309541901757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b44ab022be967f22ae8bd3060e96cee5831beffe098d075f89b4660935efaf
Date: Sun, 09 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665350453
