Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B80A47
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FCDC433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673119287;
	bh=pmJM+ilVoov2w6RXYEjNBB52ARFpyl3+qUyqg01KJCc=;
	h=To:Subject:From:Date:From;
	b=MYenlQcQ5RoDn10FWpekxZpR90LZ9ynfYyM/AKRCPYdkzU7Z8edTUUm5SvKpnV1Db
	 U+1+jizHavuHDBVrfo0S+eYRCnG+o5bI8n87pBqufoWSnJwUR4+3J4d0WM0YHkZ9Q/
	 scHDWR7Vv60/p27ANU2M+Eq31bd5N7Wzc4VrH/PpYoJ3t23C/qAIDmsM0kzKRoCuWd
	 +CDSC5FU63d1qhAoFe6fUp0khmS4fNSPDCSf/ZZ+dLxbxm73MMvMb2VmCgIukwabd1
	 wHZHUoyTUQihm5hpi2HMitE6gQ59UOQhBmTwPb2HXfWv8biDwKsU0YO9MwiBTda5Vq
	 QKDnMI1MMF9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66D4EC54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167311928741.23827.5328300407662831320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca65c2a6e001d3f2d6a391b5bffe2425e2f11fa2497cfe9e0c23c34db9320b8
Date: Sat, 07 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673119287
