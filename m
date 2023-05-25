Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49995E574
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 11:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06283C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 11:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685013306;
	bh=LuegOYGpiFMjRlfHt0uGaw9LKh1/nFp6UGeGovRYtz0=;
	h=To:Subject:From:Date:From;
	b=MrB1Az5LFSXhuNQ9Ao08jCId2ym49Pe1XHhXoeHWPlrK7kUb7M1bexbIIabuHpYu4
	 IOcY9rigWKC5XZ/2th+IW7Ges8LJ2Uqvg5WKRwxEb+WP5c7Pa0sIXq7z0esLsIFebs
	 DXFdGqzKO7AzzPFW+VBqkiwWSCJj2VzL69iNQ6ZnuFJ8cHsz5WswE0gwFyYXwAlkKo
	 jEIdLh4AOdA600HPd/hiVc9E8cRcQT/0UjKLbV8NTMjlBwbu+C6ZmvwLCRg4WSN7Ra
	 ctsJKmODCQA2/UsuufxBH+FCjIli4UXNv2AzR+cClWCf3bx3+D68AXSFggBUc2NInR
	 SKn6yOo5liRZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE184C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 11:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501330588.8202.15036850552574412577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a5365b04cbe683f7e10803641963301bb67dc6a07df5c044bfb288ecaeb156
Date: Thu, 25 May 2023 11:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685013305
