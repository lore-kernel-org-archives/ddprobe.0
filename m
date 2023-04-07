Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D462582
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F78C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680901265;
	bh=LflBTqRA0q3KSQ2z1y9emXB3Fl510I1okCQnLvFaegY=;
	h=To:Subject:From:Date:From;
	b=UrRZ6Kg2PtQPz4X4HcSjUScqvcOEm8AnL2amQ+vdNn1fQTkV3RXxNjzY3DGnTreV7
	 VDmMalhNWhfKsfqV3E2flah73pWRC8Qc2NoJn/AylQ3ue2RryP2tAGnQofBjKykUuv
	 7Uq3MfdYUEKd2hykAjrvB1S9yCgvusV2QQpi3jZmZEdpVyi7Q04vqavETVYDj3inhy
	 U9BH01ykhrcn1lQuI4BlE2Kya3n+EX49lWlmQ4sfRb9T6un+oGKCCWllDrqM3JtsEh
	 JEa66NjtJgbZFEY2aIwHmG+QNuLjtOvDuGaHErMkQSrK3u2wL8NHrvVp4lZG/JlPkq
	 h6XEZAeb68mLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC109C77B6C
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168090126575.21073.11562970663176867074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaced421ab3f6c28f68f38b5298213d24beb98c27f68c01487bdbc131bcd595
Date: Fri, 07 Apr 2023 21:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680901265
