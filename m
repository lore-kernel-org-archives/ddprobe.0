Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4DE7F4
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 20:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04A7BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 20:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683923706;
	bh=9d32rxDHooIM74l/SdYqK2HYOOydKrFPsp6Si01X45c=;
	h=To:Subject:From:Date:From;
	b=GDYDGOXZyXvUqJSTr0MyKObqIqOJfoNbAfEEt9IJZaIrbEW0/eRbbRJWNMNewXfck
	 CE1o49umm4e7B8K3HbbHxTfDTF3AJHpAeeN1JrfnM/fB7Jb4q2X9MZrR+dDweqiT7H
	 8fgQz0KNrbrVjPk6gRpjgnbJKKkX3P19sr1+r+VvIE5uXuoWdbHa0OahMeM+svj9o1
	 EPsyPbRzvNzTek+aKWnjA+q8x2S0LceFOR/tsOQNPqbOtfHfhBBX2xGXFP/C6CQ1mc
	 z/HWIyeKLWRMXMBbrlQWTLrE4prowPif3FxNCzhQkrjDGXXusTlSGbosj0UlhYPS42
	 SBMy2XfN2Xbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D503AC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 20:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168392370586.322.13151319630783308661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ba487139ec1339c9642fe8aee071f09cd92ffffeb7aa53e2f86977bc9216c5
Date: Fri, 12 May 2023 20:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683923705
