Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02ABADF57
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAkHou/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA94C433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701071296;
	bh=aBGJm4Dz3NjEw5J3W01C6vAixT8KTG8uzbtT+ZwT4AI=;
	h=To:Subject:From:Date:From;
	b=WAkHou/NgOkn94sThlZbtvt2dfYi/5alGmzl5uBogtZplwgTkdremODCmHTrjhFnp
	 AEMmnk42L7wNxKM9MoIgb133rRwz8mGhesth1TKlz5f/oJAPyUY+/ZD9hkrbehMKwk
	 pvZA5Ez2Rqm+YBsy+9tvNTUMyrB37QediNRVmosknXjo15F4qMLLncHOi0rkLUqCtK
	 zxfn7gNoK9oUDff/uEd6fKH9Z/GC6tv8Z6J7ao1BY35u1IKJeIP2pEO56NbiIqOFZj
	 +wjruA5WsOLCsnviyfwyJmZa08HpBALpuivMJLjf+E1XSHCgzF2tKX5Ussega0jM7s
	 AgLlXrMKbnyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E77FC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170107129637.19140.4347383115435242053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b91e17a655dda194ae67975f8d7f1bdcbb2e623a4331c3a8bad45595c4b8486
Date: Mon, 27 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701071296
