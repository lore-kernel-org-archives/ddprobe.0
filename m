Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43134363
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED41C433D2
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681517585;
	bh=/7AEzZTYvDUUFPTGwaQu/0VFCsc7PiE4lWd0sIlr16g=;
	h=To:Subject:From:Date:From;
	b=c/r2LhIJ9SfhW/4RZIlmCt8QG5kc8fjayj6P5qouWIDEIGlB9bcejLEo7S8KMCbXv
	 PB6XeNP7dOAkWK8dsPvEO/O0GmZobQ5q/C8h4vsAmxE329p7RA6/P0O0m/N5LqO66v
	 wlRFWYxd4uIWZi5GSJ/k6xodNO+X6KKF5BoHDCOvFHlfgqfLSgH+KzRd341AMekONS
	 CFua9WgkvZxdLO+lTzocLLcsRMTBc6pNW+ZoNkA7RpcoDZl5U6HVV8yPZQ4bI284Xy
	 PRBPFVXBKRV8EPAh95wMmBuMK872R499BSBSkVMDjQBCpeydBC2FC2SDJ0iKGXMgoF
	 VFjQjQhjk2ZEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDE40C77B72
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168151758576.20057.9449398621481377488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f17084fd75acb149b9777cd4721207946a48bbbc37fc18f61ad00c4f9b184a4
Date: Sat, 15 Apr 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681517585
