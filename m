Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8012CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87069C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670707887;
	bh=aiL9m6y0SWcm6o0tdJhbCYtlH6zBWOEM5TiM+y9y5tY=;
	h=To:Subject:From:Date:From;
	b=i1wNU105TAVNd2l37Iw87dcBdPX6s+S3Cb2M844eix2a77//VglTp6Xdpvqy487xe
	 BFFF4zAppTlQZXvW/15EkwjRoabUwJK6PgEhnkhlVjgUupqwqaiclvDWpuiI/2va6d
	 26L5ma/FMEs+Ww3oMgtiAr0Wv1ZmYMK49b1Uh9FsnjpQ3Umzw6IvZZI7BHyH06sqEQ
	 QRMDNwLNS1ZHJZCcDNNALxPyDJMMpDCIIx12WTkvFaiAZUTSS/YcRLaxjgmBap6Ptv
	 iDD5TpEHgzL7bmxtn+SDO4TOm9xCQlBo0P/DfuaWPUarm53+XNxxy7pVE2zrAsRmzT
	 4zt9WFUGV7M5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C831C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070788741.22572.14293281124873097878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c12d4a7d3e8ee56d7198f3d27d939ce790ae896586c985738d132d0bffe13b99
Date: Sat, 10 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670707887
