Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C4B266BA
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 15:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA72C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 15:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695742508;
	bh=x9eeOzLocFxkI34aTiha7syvwbbesSz6R2EdLL8ZaSc=;
	h=To:Subject:From:Date:From;
	b=JurgKbb5xTjTydJrzA/fPlLjMVjelICFhdGhn05SbI7vEVbIEuzqfa7/u+BUNW4do
	 YaHOYoMAgB+m7lndk6AbtThf74QSV67UcajuNDohoij0Ttb8lWcZ3kDCGE7IbeoU67
	 tll9WtK9BXUvjxy8040Hd8DO7bw4jn4WEtGOv81T8pDaKaogHlymIGIJDiU9mT6ESQ
	 zFi+DEGK1ul04dm7ipvtbxt/Owulm2dNv6WlQJDMADavOOJzVAItN8CPmqWjR1cexa
	 U6Rol9XOf0880ZPu8e+x39CNFNKTIsaJ3ls1Uv2VRkkCMz4YDg6e3Fd5fJz3THs+bp
	 +etgdDQhTQtJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A0CE7E644
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 15:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169574250873.5411.6107437232233453515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ffd1bd1131e94f1c9c233ad1193d143656ecbf3d756cbcdd5b197f08fdf7dd4
Date: Tue, 26 Sep 2023 15:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695742508
