Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE32A42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C49AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670635887;
	bh=cNFX8kHWQqtvps5q1O/mWz6UV81uUx/lyy9NTb2xRAU=;
	h=To:Subject:From:Date:From;
	b=LqNclfckOEsGIXW4LAGmWKl6WGhshiCzNrhGouzgrIZBlIVxO9njh3Y5HIRSU78BJ
	 3yuIFkA+5XlnHZah7chtP2TYCsnKl25AaWR5GkXIRKvFTGys4mq2q64adsak7uv1ag
	 igGuGB/Bfm/Z7kwwBWp/bAQeDLAIA0kP2j4JY7iMwna7IGOWdwliFhdUyMxywdFbn0
	 7ryI7ROY5FwRbss90y+0aDxn/HjP0J3l3D+5S8TD+OsxMna+Xi2xclB2fl5EBsFYi4
	 zBDO1J5jx7Xndie1FtQ9Lqf2YlwOLFHazRKOl7DrJTTX6B6RF1JV/Lg0KY5Ts/H+8k
	 7KtCwONMgEtug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60330C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063588738.2900.8607985921935701591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ac0c43d1c03d881164388cfaf8680fdef20c42944a4775a9fdfed7afe50e4f
Date: Sat, 10 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670635887
