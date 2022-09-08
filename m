Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49C239C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75718C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662676253;
	bh=JG8asRHLxyMhAA1m3vsNlWoZt8IOF9hQx+pcKRd9Aks=;
	h=To:Subject:From:Date:From;
	b=TGfNGNMjURPkG1z4iTqOw3uKvZ1fKLbaeiu+yz+hY4RdpGdum0/Pj1W1WqgbzT8zN
	 W/UCfAi6zFYMlZo1YxE07LI4yIN6KI4nYETOsgFEDyTYoQcS+HADOh1n5aQUXeAg0y
	 jvcA1pHLkrG9RW5Ftir/GIG/iJLY8zS4Rj9a7CUMDIxQBdwMwh44FhrXe2olq0Z8aW
	 MEJvsSPFPxC462jgBXoFxVQNWeaJd0HGm9KGQ9kmUmT+AYif4lryVMPBq8hWYoPxc2
	 if4phLe125/p+tylBF/lyDiMI/UgQfm3ViWPjFUO3RKYKcu9u7ZHQdmr4LRVRzrvVq
	 wBOIZPmb6hwXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56387C6FA82
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267625334.25680.6641852998064680640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e46b03fde80f9a4c75b33f4357488f8eab4f305af1f807f6b774d14c6357a79
Date: Thu, 08 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662676253
