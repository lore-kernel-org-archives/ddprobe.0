Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29071109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B8AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670671887;
	bh=Z8krbwq9igfBwfdxO7lSE+xJrgT0iOtvuBKW7iFeiQI=;
	h=To:Subject:From:Date:From;
	b=BlQ77wvaPslgPOLLRSXMWLhmI55k6+jf6aukO3xZYRuzLbIb8b3gYZH/rOApDcrjo
	 cJNmrduXMZKv3RKl89WJvBrZed5uXlPSAQVNggL8rqa3WkgNBuSoM6ZafKrk2a5i+1
	 VA7cW9NHNQ9qjIm9vHzq18fnpNj1TuantG6Iy1UwW62bHFiw7Vdry/a1mk4hwhQKWn
	 OxUmsB5Xg7U08Fr+M6DXqJ3ofMWxfQvdVDvgNYZfvNkLtDQWhOGQxmFghmKyc1B+k3
	 bF7TsIDnM0PNIUtWjCQJpgSeAg1KT7RlwKFaqbtkPIz0OBv1H051XrJeMmNADDUfSr
	 mwkuRsNtAdlvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69F71C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067188740.9123.4294928133765346418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4d9b314cad5507b7fcddf491f1ee9f5aec55708be9a1195f085a0a5c33f622
Date: Sat, 10 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670671887
