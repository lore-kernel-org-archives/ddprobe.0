Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B98387B
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6318FC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669075854;
	bh=BTBSnM/Qt2iMBBmOmiel5bwtKnvWpAaf9+AUy1DiNCc=;
	h=To:Subject:From:Date:From;
	b=U3QaXfMH/DoP56wOXk8+kLFgp5coTb/kNm7X8K6u6pl587OIPZrAJsqCbvytigWH0
	 GuhJ1Gz1cQMeJ59E6WWnH5wcxzshOuAeHkYXmGGvFjdV/z8n9WPpslkAZJ67HB/Xlf
	 wpN9zGnsO+dmlfjfovqHwk30y1YNGo4NV9tgpAoEZuXYSkir+xbLgyU62+Af0euQ9J
	 cDpgCDQ4mIPyYUo+Ls0SJbcSvvDW4K3KjeDvS3Ec1FtBCboES/2MyfrGHtNnhFAjWe
	 g06H6c0/hhw32Y7JCudecl0gugoE7ZAlFExOplkn+w94acQAtnm/E/OFbHal7lGYlh
	 iHrIqf+++EOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E6A7C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166907585431.14843.2119731101671553498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e85b67369a76107148c1678657c30b5b7e8aab4c5be3fb5a355c76a91bb1e1b
Date: Tue, 22 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669075854
