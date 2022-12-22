Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBF9523AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91775C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671697287;
	bh=ao2iAapABDifwNtAu03qqqzhtk5Kk2S4ugN0aGHxltk=;
	h=To:Subject:From:Date:From;
	b=ack0yv4gN/T8guYjydoLMomYy1yfXD8tcWyCEbmGHZqZD02cYaDjAK8Jn5uS2hM6Q
	 26meleEjyuG8AceWbDb04uXUh8SNpqYlUDEg/JJhHfocigsVAOvqzshPBdM/8UN+zW
	 1LTIgLccZLwGN05xRmmnQ85/VbdQmhiW7qgNmmB4HUhWKlsODLyq0lU0TSlcWV8JN+
	 aqiE1CUfiBlSQX2Fabz1elt0InowsUTZDXULz6LuwoFQWCXgQn5aNgc09MIBYz1gd5
	 Rk9g/VjTnCRnBxgY7O98xjNzJzGJXBZirGUYi1rUtR4VmEmMU2PcmhsTlQAqK2f9ko
	 wkf3KWTzZr7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70D4BC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169728745.31318.6249191725241694653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38b2c0ed1824608b1e6b83b79eea1ac1343ce41705828f1cb3adb06ff116bd7a
Date: Thu, 22 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671697287
