Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418CF62F
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E50C433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676717105;
	bh=ICVTarnutSEq9DA6UQ4x1AF6SkaZeVspSIjVe5HOeJU=;
	h=To:Subject:From:Date:From;
	b=H2r1uCB8OSkAg8a2Ja/r2ofSPm99vagiww+FMG0vakEEuf8+PhOHc0wp1AUaTJ1ur
	 SHquJc43WpxrZERXUyaw2SMt+ZU4fsxYuoErIyvdU46o22MsMKRHF/FvY8np150eYn
	 lVpNNMTSGQ7upQR/1cVsT1nAqqF7xcC29vKzFfdX5R3+F9t+5rLpLxdqdyOOHh1BtU
	 MRit9IUnxgfdL3DSlVhzj2Bl+Qlp+46ITyczA38Y+C8MgInS1YZKTKhI8mFFGHqhEk
	 DKLeuYtI2mQJhWLgLYO9yg1ihCUx6SJswgeQewF/WJMLpjfLxR7XkEzDKTl2FWSlHi
	 zUv5BfW/KBqZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF7DC636D7
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167671710575.20250.17897076194638042429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c9ce01a3324bb624ca136c4b94845e43f5b91c76e4a23ec5f3b23ec1061c1f
Date: Sat, 18 Feb 2023 10:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676717105
