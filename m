Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC8432F2A
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A22C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671230487;
	bh=6QZpb0f55rq8FDDVbDYGi3kpiE59pCwSb8ePtR9CGZY=;
	h=To:Subject:From:Date:From;
	b=E/9oH/YVHjnh6zuP60LKhBhP1MSxUnUwR49BgEJrIjdi7k/OEWjz+MwDhCx3/Nx3x
	 rugk30mWeaEdVkTMgM4S3I9z3urmN7Nb9U0D0NoZ5ZUSXeR2xRS5Y05EzSQiXcEdNF
	 VpvXAw+YmMD3HSeuOwv7xJXL6DsG3U7NQT2pgVDAtvSmBXUBDRBZXaFyR/Sp2cI6ug
	 tPALCb59QCVkAs9lXF0zF5ydla7zpr8l0i+gw0vWBwzs8yfnWipVvs205V6twfrtwu
	 70KHsWWS32fp540SBR9td3bVC4NS65EJCP0muLmaWSVfH6ekXn4rYlVGQY/arqBcOC
	 Dfr/SKjFjxZTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72A3BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123048745.11575.10223118932838002376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67709f229a8b612e601ce1ae094c849b7afeb192a29ce8857e49700a6796cd9
Date: Fri, 16 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671230487
