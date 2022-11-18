Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D552B1840
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795D6C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668744654;
	bh=YEUkOBGKbE1EyGvmhSHzaIHtsGUviNSNcuSGJpmwsjo=;
	h=To:Subject:From:Date:From;
	b=jyFBohMX6IEQPPm8Ozszf2o30xaDgpqqW/09kA2bh0nB0viHZdZhnGny/Ckog9MuR
	 XpRKZIpO22V5csvlslwVcd+L0d0NexXaeg0MI0yn/vUrpxGEa+19XOv1aapBXug9yo
	 9tqSrUurNmEmtOXFnJLXBk5JT8kRZjLcI+XGsb3rV5jlq+bHeyrpsYhmW3Pt7nHSZZ
	 xeykef5p2eXNBHcnICJ16Qp66A87BXnHFUWjTGneCeRWyM2+5S/yOYDNLbxAn3+O32
	 Y/CP8gXaNGCaL2iJjTW0T1lGsGP8Owblk2O+N+ZLVw0TIg7QK2+jPceRa22Sjd3E18
	 IuB1WVALKu+Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B97DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 04:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874465435.23376.4977072818142158460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53c207911efa1f23355432be797ffc8cfcec0e1710cdef287d5b16c4a0a3335c
Date: Fri, 18 Nov 2022 04:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668744654
