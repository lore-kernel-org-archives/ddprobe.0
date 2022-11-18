Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C835E17E8
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71526C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668742854;
	bh=5gXGyC6Bb2G+M2Sof3K5NCy+vx3g1MssttCKTszlpqc=;
	h=To:Subject:From:Date:From;
	b=RTYAcXPp95X/HzgXp63CJeaihApdhh0p6fvLdvvqe8GDeZqRTqzFkaCGOT0f+dGlN
	 a6+BAsHPLElIJqqttNGhasgeb1TNqouovZPp/E5jxoZtr7kyRVwgaf9lE4KQHJUykg
	 nsIeIjtdHzIp1LN0R1yLrORsmN50DOklZEb90R3oLokECmS/Ld5C906E9xEqHpObnr
	 /Z9Ii2b4YD6GqCKbOIarBdLWlmiupCbgLcQ95edRJU3gUWoJk5kXsGr+V2uORJ0b3m
	 fZXC6MIuSQchd9mvyh7EfUynuOg+lme8Qbg/FWEQQsdlbcVwEMbsML95K8Q68VuNKG
	 MaWRMmSGa+jzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 597A4C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874285434.5893.10742007702765012387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc55eb071a9973ef41aa3d784f9f19ed92f2c0d38acee06ce4f7cc807341d51b
Date: Fri, 18 Nov 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668742854
