Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAAC8468
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 19:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6C8C433C9
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691782388;
	bh=kYW5G1RRbvXJ/BYdY4XjNXxqTFlaTxcTrUcdUWNgLH0=;
	h=To:Subject:From:Date:From;
	b=HXzNBsYtw4D08soQIUxMuZEcVg4Tvr/IABE68nXDdx6Olou3WxxxVeS6SO7FrK8B5
	 5oyo1TXz8QrHIsbM/66+ukpHvIk2dt2NXyXIwr9idotUf0GcBGL+A1wYv4qupwWSOl
	 T7FYwvMhiPsSrINvhysNl7uGIWpaE3j2zo4gOfAneG45UAajhkaDJoCJIPzG15XsHB
	 vEn8fvtrl2clqBzvfqZ4rFguCwzI/yfYXyAJgZg9ZyEJysnSe/wxy5MS1ks8Vw3R2D
	 bgO/Wcn/XBYNAasbIbduZ6+6yj90DFE3w6QAUq0zDQp2chz6IYZ+UoN3DA7cY/YNG9
	 JxUO9tgVcPn6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D8BC001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169178238866.19223.18439494739217361682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c1fa55e82986a06648d792ebdc9182ddcd02d0ed3a17bf1a29159aa882eb3f
Date: Fri, 11 Aug 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691782388
