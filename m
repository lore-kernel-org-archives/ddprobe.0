Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA75D6FD9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B9D5C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670880687;
	bh=4KdXMDVLjkZlOBHby96pzLONCx4BXvP+oJzUXCki25I=;
	h=To:Subject:From:Date:From;
	b=A1Ebq8VVUg9gUNuiJz5BlBUtsjt36fFPoV5ioV3WTmNotPde3zKbjkl8S+XXLQ6Qf
	 7smDwoHgirAQ2tQIEUearYjBTDiLcb8FCHfjgZI7u3/fqMXZ7/hRzGE6Wbsv+en1qQ
	 vDLnQ4CBCUBp5wH5OOE302/OD9jYs8fY6ZFLvuaWzDPoKiGQUs4DxjG3ITbLHvNDds
	 I7H9SLeO9jrlxHrtLkbAiDqYGsKWjaCQ7HiwTFUFSJsFlWc7oV0JKYjLwRfmGajs4Y
	 XuJJXZGKpbQVlQm/SZxxJVJbh4ta4SXbB82gjcm2+LM00so4H6/sP/1yDajaighOc8
	 C7f6T7p0081hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E606C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088068737.8720.5717125315501455272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee3e76e47ecf1374082c8949abdce156a15fe9ce7e6cc20a3e077ab7cc10c30
Date: Mon, 12 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670880687
