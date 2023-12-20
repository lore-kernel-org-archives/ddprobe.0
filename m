Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DBD156F9
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqwMIVXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71A21C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703036896;
	bh=LGkDS3kyG4rcvqya1rT+uZbUpblfaxTsjcW9VyqpzQY=;
	h=To:Subject:From:Date:From;
	b=XqwMIVXMo3BY5NE0Y0ISX6L8xQdnGYFiAziODXLFv2du6Svgl525+LwhbzvSAXRuF
	 MrZSeUSbg/zZGh6sYmAirlvSRImxtpoRC49/LgrEYyLS0F1rbKmUuufyHrZ/qBoM3a
	 bgE4O90FLbYu9GP1583G1XwM62pFYFpHRuSROpa1BZ/iWo/7wNuIhSqhpdC9o3Zp8i
	 ZPGUgrJ3X/2btWEZUstX0SNfLh8N0tFcd3g+cqLCr+4paJOvCpRz+01ErMGBbh0XbA
	 uYYhox2BXJL5SnRlqwWPV+vJB8Y6NTug/doryjsnTRzPYYG2E0MY0RKLoQ6MGHtwd2
	 wMxOngYm8aq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABD5C41535
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170303689636.11318.5827628719179013690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48f8cc514e9ecee9783cd31b2f15287750eb8e57803acf09fd183cdcf8728cc
Date: Wed, 20 Dec 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703036896
