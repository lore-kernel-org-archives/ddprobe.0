Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D880D1FA0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83990C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672380687;
	bh=/KqqnRR7SFnK/csivoPfuQRKlUtLpgOQy22vmyDBOa0=;
	h=To:Subject:From:Date:From;
	b=nYZ4yWgVgMVfT2mZaDv8phA8UHuInX4L+vQV7BNFX5sDjgckD2wp/fi6PRz7/PylF
	 UuZBD8GBoi2589iFcpwxyKvSWPP/DNQ61eDz2E9xIW23zxYRq8k5ekBP+wCncsJSMC
	 sJy5DJxDCM71RD6Y/pdxo/dqAa0lEVeo22rLTsmcZB0eSR8Ak1SgHSdvDrYn0ebQRT
	 ktCs726XgLxZWK/YUxRqYknWwBtp1LPNXZd4kqLBtH4HnYoXYIOaZPjaRKhrpscZsB
	 WXdQNThA10SZTuo3tsXKNs4Wg2uSOH2nkxVKUjTtwmRsFYnwtHlcibk1GYnf95nf0c
	 JcH0N55w4wFEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69B4CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238068739.386.61851565943693824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edc1d731b87423d842fd986c9268ede890d6010a9a6446d16542443925d4552
Date: Fri, 30 Dec 2022 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672380687
