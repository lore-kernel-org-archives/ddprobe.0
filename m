Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0439D500
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67762C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667778654;
	bh=KG+f3MLPwPhqqdtOwBJMcfl1pcOuNt+ioKZRozB1Gdc=;
	h=To:Subject:From:Date:From;
	b=ehRHLn0ib4MElQmdXegUhljHG/m5KFluzuAcJ50azzCFuhJiqX89wBLP6yHvqwFmE
	 5v7ejzVGLeHd0ba1ndyw6ClTQQSeXnvb14pcyq5QKiNmm2YGylCSqTYGYUmYElBApy
	 mHdYeMev8iOwU5/TLlNywVBA1+P0nyw9MnCFFy77p16Yqc4DNYmQBN+A97xwNmYkPi
	 NPb4wtt6T4v1cnuDm4gUWzGNYvrdG/T1XQeGMP49PaPmkiKvZe7ARJgtzdfy5DotC8
	 H1zLsU8ZsquGiJlBb5sy6kAPnod/0ZoweA/zGkVTJqUIbkGsboIBNJrQHQsKamNarN
	 cca3OfJzA8nSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E66AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166777865431.3153.7369246192869797592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0580b4cf6e25a2fb2bef47f0bf71c2e6163f46b45fa965f2f5865d724953762
Date: Sun, 06 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667778654
