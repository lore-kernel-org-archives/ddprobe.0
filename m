Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB5558BF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A456C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669645254;
	bh=XEEi+vWjQYbQh5AGs01G7C1G3ktjANWEjBW23qw3F8Y=;
	h=To:Subject:From:Date:From;
	b=Z33VUFh+vNVYUrGU5Tm+d8YNydoXi9nCDtrhbScJBbREBTaB8BzSwrcEnutFEwgTq
	 yNPFUnJ/ShoULoTUdCmdPZlwZVJqPCt40Vc+ysUDUB60relh0ld6xBnMyZpip5vln6
	 5AAS0c2l1PeK4w+4cR4J8DaEmi2KZy99HxUniiF6FiKor80D2xS0nKM7C1NUG5ycTP
	 2SweVUGsWr2F7vwN9DShO4iWhVYW8j0bymvASewjqe2qqxmIU3uJQapHoDgcUtrY/w
	 tPa3zUMocvVNuZjcCLCLKJg6WtjzecIuuMYec1qmZCoqxJwtPLhjO3WX/RMtAwtjVk
	 XdBIyA1t5J3HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F61AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964525431.27027.9462637740534611539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54e1dd653d90b76d7ff72cb5e1ab1c9f1701d0b7cc67c5f51b062b5c28b3d3a
Date: Mon, 28 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669645254
