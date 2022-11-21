Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB5367E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723C5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668992454;
	bh=po41tTvjqaTPWiWbly2uSwlpXo90FiCx5hzpaetwvQg=;
	h=To:Subject:From:Date:From;
	b=CzfWxPTF3hHO3x9wLkYa6vlNJN5Vy+cEPCB2Kk9BQJ4XODDVZWRKY81HbGBBGi/8r
	 nwvj4llvz9AekcJMK78ZGR3z55xGlBwUZL5ATrQLw7yGv64+nU26UwALpRkzlJ8e8Y
	 EiLb7FIms6JayLDkkUraEejT+kooSt0kjrrHLB11z/nLK9nUwovWL2WGxxj4OvPueY
	 ITuW47uVMcKk4gpqeNNVCBrdv197fCKZe6betODijJ1ONSV7AaHbc6AKAop5b3csQx
	 9A+qN76DgiG9G2XN9MTXDesskns3MRD4U4r6En65olgQit+L/wlOh4ifot9SJUTUue
	 wYhhGs30lQF0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BEEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899245434.26391.12317755647001139417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a559c8a20b2252298b195de37bc20653915819810c6be37240ab73017820ba
Date: Mon, 21 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668992454
