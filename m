Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E212615BE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825ADC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671766287;
	bh=DErkQhm1+qXafiH7JW3EQVzZnXuFVWZErmTafWTXKN8=;
	h=To:Subject:From:Date:From;
	b=AUlXnYGigwFroHqHi2zYfGWuslz6PJ6HSGISxb0k2l6OeECPTEt4xPZz2OMqdjOGZ
	 yTsr8WrhwREh2927QkxFH8n2Zq6/RJHDaYqxAyaP1DbuhcG9yAa5RNbSdBybCxdhD5
	 odykLszZjO51ZQ4EqfaCn/xAtF8KDU0CEf3T+vOUwjofSZHJUwer4BGeYGQ+1jvd9K
	 wEecr5y91y0mYmofVwGucBApif/dxg3GHhLV1965oI6EtIHGgx4K3QhqQ2FQG/2fPN
	 S/1tdFGTuBol+q+mVqHAY2f2OLrrZNM5Z+ttOkRYI+XbY4DCT1TAjslmPaH/x1ocLo
	 j2p+wZGkU3xiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68455C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176628741.13141.9388648541982238040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b432f9b497d366912519759c2c2406c037e0be89702eaf2fe6e3cd5681957238
Date: Fri, 23 Dec 2022 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671766287
