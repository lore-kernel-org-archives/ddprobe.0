Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD66728ED
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892EFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670854887;
	bh=m8lKNVPe89Acdc5Vf0pinsM+NnkjiHlt9SCwJgfFhI8=;
	h=To:Subject:From:Date:From;
	b=rgeRm6hCSVNtLVlK18Alomo6ypHWSrM5rK+P5wIg8Qu1RvHeWr0DVGVLZOHfgdgfr
	 mWeNk+GwgSqi/FqZlIEzGgifbDsR9p/NXCivGx3cDGIHVrXBAG46y8ybPlW1M/tIfW
	 an2m1gMPpxkDWd7EfKP2zxMTut9rYuyR/fM+dGkydM3iNig0Ukg+/SZXcXeAe77jS4
	 I7ciBZ40a0vRPF6lpgxA3Kc/damOoZ+p33JiDZ4yjfu5kflx2uHeaBxPfhOUf8V1Ch
	 gyOmA2hhHTtheQS7fhSLH3Q9lyO+k3h4aB07rKe/x9FB8PZMIFwL+MOa/RxFBx/Ms0
	 SEUvFEwgMgHSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 718D3C4167B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167085488745.9010.11346804952638858572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda432240e5a9b6f496d81288e7b28bbe666942e3dc865ab68e8fe4fc5aceb02
Date: Mon, 12 Dec 2022 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670854887
