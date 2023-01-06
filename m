Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD7B63D9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9CAC433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673014887;
	bh=8K65mtLH/7slgygT09eAxsdc8bwM0+XgjhSd/xPjsDc=;
	h=To:Subject:From:Date:From;
	b=dmAzhipKaXoYZb2jJQkZRMLaLuymbdFyecjWNkVGdBSin0o7MGmxbZLnHuUwcoHgt
	 eJI6ndOYBNrfdtdhefCrqWP+IMkupVdNn8jzS5VmwDB+/gckmNezBkt3FwKXUgiNh8
	 G9/AhNmNQM3Fd+nskgd9Maaikv1LVxHic5qH5qyaC/1pKqVeGJL4flIV5qPTFcQtwH
	 oMVbP+sZq7M8vol35DGStyyC3PWoaUM83fgWczp8W6WM9EsqR9attizYh4IagSNIPo
	 wDuvGBttVXrUfvav1fimjFcrwztlr3IVARHNnzH+0Zfa8LE9w7GVH9UJVrDGUbzAtS
	 cURg/UX/UtSqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7260FC5479D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301488746.19771.6015161007434045829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d35b742060ed5028b2daca875d3e9488ff2126460cbf8ba9f20390f6cabd160
Date: Fri, 06 Jan 2023 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673014887
