Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7817C1FD0
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 24165C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677929826;
	bh=2CO5mhZ40R/7YGFBYUNFKlNDwsW3/AoYgGrVby1unFU=;
	h=To:Subject:From:Date:From;
	b=HxEUBUpT3XD8tAq3I9GjGe/ywWWqdwsthS28L4BHDBMOHdRI4l7hLXT5Oh/CviQON
	 YsxsgEbByjMsKlNxTpPM3U6ywSnAAt8YaEfRDz15GC0Zdap/019BivnIp2EynEjTGq
	 qmTF47WqezKpuTPkO7z83CKAY4ISa4HmkEfcgNuHlUN8aTu8AIQ8AmAj0IU96aHcZX
	 i+cB7kUz4bEQiNjsHP8VTrTSEJyUAQ6CEnsYT/ya9Lr0GHakh5JsnkjyVXnK7fc5qs
	 U1R2yq04EYcuvNRFgj9TGzTE7doiWKzMo5xeVGY2j6Bree7wDxGDzB2VtQK2XBYxSG
	 NtqA6sevsKCYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBAF6C64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 11:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167792982587.9043.16307080198473566959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e77d84d9250c611cc56ab2c6be9a4db1b0471ff6dfead821070acf578b14bfc6
Date: Sat, 04 Mar 2023 11:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677929825
