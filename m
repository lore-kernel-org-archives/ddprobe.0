Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA9F57E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75917C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670548887;
	bh=dPgasTGAOao5zIrHmo1KMVL0edsx+pfOT645gSouxRU=;
	h=To:Subject:From:Date:From;
	b=nPkYpzMCT7H1gp97H4LKo+QPhh6/KeG2kw+aFzNeRWEWw3rdYiJtoJwkHN8rhhlW4
	 ppGoWXMJl6ZtvCTXa9U1O7qAbADXjr+sLX4iXUQRriAiZgJ5StXKepq7PM8bvHxosc
	 Mqj7KZDK6hQ6QmgP587BMp2tiqPxDuEIInZEh+yL/ukPksDhdGAW0z8OaFITQW2p0m
	 LAhFvGaSj2wh8CDl5TIdtB65s9LkaJhUba/jK9MlbCQr7xZE5Zqmh1gU1k/7JPiF+1
	 WoVY2OgInstnMipXZKa69sP3UnlSOb7kK/wW+Ohq9WzMIK5MzTNaTWy85TP21Q0X7l
	 d4dBMY006oFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E888C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167054888738.8427.4679830441163872733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95c78ad68df154e4bbe05b59595a22f66ef57ba250f277d5f99f8dc400484e7
Date: Fri, 09 Dec 2022 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670548887
