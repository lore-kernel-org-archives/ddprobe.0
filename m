Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD067F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 04:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F089FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 04:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682136606;
	bh=eoYdldJzFOBx2knJ5f8lLuFQ7XhyAtjb57o7i2NMXAs=;
	h=To:Subject:From:Date:From;
	b=PdfuVr/NrISZSxRPrRgwY40pM4T3NojeJJnqtzwsGvf6rGQz0o73/8bwJ7Fu0sp18
	 fO3p/UPa9Rf7AMSOWakddLKHemVaE3G8lHZV04kCSGsOEbwHtmbvXnw3COhXTf9LcE
	 nFl4OparvMyT3Lc2vSIWTXOGhp6Bbim2DIecqqU1phynu1AqfgPyah+I4kRIwVvPy8
	 gzDjeOvSzGY3wVanlX4J82MpBsHz4BbozbFcn3yrotW9VmPEyrFR4ewCzXDTcZIsfJ
	 E/6nE5wlw2bzq/wgM3XqpoCC16kUwEulYH1tsXyGOGo/awsRvV1JLxUcDGV5vylx5c
	 LrDJfALwIAZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FC3C7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 04:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168213660583.19399.3365795973367909369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaa208ec499d419ab10a14c96103181b4608df68ee04e786beda089b6705fd3
Date: Sat, 22 Apr 2023 04:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682136605
