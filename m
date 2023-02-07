Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370F320E8
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 09:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1461C4339C
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 09:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675761425;
	bh=arTIJjkE372a7+73itzdT4Nc8obw96S92BxQSmUcc64=;
	h=To:Subject:From:Date:From;
	b=Uc8u0F6vg/yF/TrvtzPKlfPNgwLlpB1VHWF+ZOgn7+nAEeRhqmyNoHLNtP+hAl7d0
	 YqeL+4JO0okZvLYIygcmlLaCYQcf5j6567EqLyA3lVJjadhiXXFHri75Qx7agWHASY
	 YqK23IHb5Qx7H0u0KwGDVdOvc0wkT29fuEkCQ6zIAoC5baQOYV2h7atzOZPI93k6vb
	 IwiQUO6G0DBnYKGV1asFRr3hxzQ73GCo6f/66i8f2/vFOhvL1TyypukODcIiTKOEhV
	 5/yytr/VTEWmrKGqdbE4NU2pE/mt3DDJFlqF7i7r6O+brKHupJJWA71UQmIx7388v1
	 kIC7E9lA6c0Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9460C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 09:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167576142575.4032.16730267922453294476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0baae504c8a563e22b900dd839c0566f1db550241e2defe7d33f25be5f216b42
Date: Tue, 07 Feb 2023 09:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675761425
