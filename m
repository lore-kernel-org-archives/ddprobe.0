Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45AE7F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBF2C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663503653;
	bh=kM5ZxdMfc+AvkD4e0jwrB2zsX5ioRc6ZE8iL34EdeOs=;
	h=To:Subject:From:Date:From;
	b=cW7i74V0LE3oYmL9xWQx+DqNuQ45tS/uxlIRsx687ROWmO5ipqMtp5SR+7XNuST3t
	 ipdAPmyOko15hxlW+eC3dijPP+7QH3GTguWmcvpmGn4vNpE1e7hK906pcgmaibwuD7
	 op4FMe4yPNE8DL/DOYxPuMS78Ph03k1xSbEEXsDiM9jNqryE1wM8HG0U1N+K8hHF0s
	 tw81jENaEwe4pttTi8Ce9UNksJ8xoSI2K1zNcbIstobi7989jquARQayE4A8UAIQDa
	 h6bkPfFuaqPrpTkHS08JbFpGIj2vdn+pwqlo+vbtSlxsYf2qse2ZQytpLeCFK1Roe3
	 HruGAawsrHOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53966C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350365333.8139.7818432662868262827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a34ea2ae840a48fdd4057f6e2d07b111f8356db5a6425c9a0dc0e83fce3021e
Date: Sun, 18 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663503653
