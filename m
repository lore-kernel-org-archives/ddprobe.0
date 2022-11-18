Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30C629A1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF71C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668769254;
	bh=zekmQxpDAKVGmENdJ6NbTIoWfqOwbemL2H7fCqA4ABo=;
	h=To:Subject:From:Date:From;
	b=Tx/pF2tPduucwkHgilxsYwKcRKEGol+rv60KG/vl8pQuNrqqjb58TCAGnXSe+nphp
	 UvVqiK1V7NwlQlz1H29I/Fg6pRLbb4kh/thkAn2Mmzr+5VC0Vm2pOI5BWRHniWepDF
	 m/rLeSrfUFDPFWRq+1FdVh46UpyV2U5WdNO/en6Cm1ylrXQXiMSiDdu1762lPj0gaM
	 EJPOIn2E5C7a0+v4yLAmVGXrTmV5E35IunOLojvLRVpCQRE3vgrTzESfSRMQ4ectrz
	 9DtZEAWGi8nyjxMu+MkgksgiqhIlcUJ56eIg1TUz1MiAbALxMGHMi+o/VGj91b6hHX
	 DNgL2VorIbo6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58148C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876925435.22600.7555770967941315405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547ba9fc8f2275d9f9f9ded6a693603c1e10ac9e6c2938069b9357d94ec62870
Date: Fri, 18 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668769254
