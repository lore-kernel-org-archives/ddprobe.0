Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA48C7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C115C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669435854;
	bh=wnlXDJ20HBSwp7IB4OX5C5g8UXlBWvh+TSpq9MK1PuQ=;
	h=To:Subject:From:Date:From;
	b=bAi6i8FVKXRWaJAWJUh328/P6kF/hMkFGAzyQTJNYjAaO5LuHghHpxn1b4E/q0IVR
	 xkzGtYJAp+Z6PdE7h8YG1RFAmeewYTOy/EYuF8RbK1PT38tKbpLEkCyaDxsHDeWOOo
	 SWssdudWisZsi2E2cKpzxIMHDM83Mc7AlnPYUSgjeC7eSXWaMmtHIHYOfXw/xSC8+a
	 CfIQbf0UqGtpadNXqjgDe7jzzOOxLgPZnFkX1a3UNtPbW7pWsGfdpa2bzCPgFXPU/r
	 Ze0HDYnQ/xkyKw0upy7yL+BVfFL4OlePlf+KGFS1/3AYwDYoEmb7yZpLF0WZJkzwL3
	 SCQ427ofTP4yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605F0C4321E
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166943585435.29848.3002574026510929600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ab143736065113a8910076c8c046b98d83acd3806d4cd36fc0ebe575500cb0
Date: Sat, 26 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669435854
