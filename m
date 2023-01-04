Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE291AD48
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77991C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672848687;
	bh=rSn8n+s8TMRq8NvFQKh43QIy4tWxw5YEFKvswVTslV4=;
	h=To:Subject:From:Date:From;
	b=afqdzYEX7ipRTdjAAD8V8N6ndXRRkV6P3wF0W+Itc9eyxm8hdp98DmHmPI0ep4Ip3
	 XN2Am5VoeTcwwNuNWn81HzopoXe12gEX6t0K5kuHmuasfSm0waL/zIFz2aOGM/cp3l
	 VzHM9zsQKR18Ms+HpFbeVq7Q24R4aV/dBngMeqWDSrgY5x8AhsIFBSEzRK1S+P4YvD
	 i2n3Qp6/Et03AGKllF7y57yyK4Pgo2NI5Cuwu6UiEIJQRLcf2NDgQHFUGiIzGST8dj
	 MOLvJImKhrnU1WU1bBTICSm5P7xGJb65W5VKzwAtmROgSAy6fRvTdhiwbpGc9kXrdk
	 z6wrE3YiWuIqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9E4C678D8
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284868738.18446.4113225943566131510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8970a80c51cbf717dbbfc62340467732bb7bac2cd26391ad6e0cb464625a53
Date: Wed, 04 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672848687
