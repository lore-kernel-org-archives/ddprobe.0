Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF028447
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B60CC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663828253;
	bh=5PPNJZ5jWY3AYuZx7ih5lLNcE0qrxtHy7XyDQYzbh+k=;
	h=To:Subject:From:Date:From;
	b=ED/HCEHCg3eWKvEtExyE2O3lZ6Nnx27bghRBM2jUMblr3DwcNHak9br4VJAAaLBnz
	 3OnZboGpsnPuYqMCyr98Fz8vX3/MbhXmcOxP9W4wZ8me1kU7g+XMncUM3Dlhh+LBJg
	 ELCn1rWlK7uwktAs5qYsyZHoANjymNwHgeeEK99zbBbBLfl8GZdB/42nwpXduEVnpv
	 wogw50rsiRuuvW5bQTRVjyBKyzF3jOHYENdsIytTolY0fg2Ew1huyVemOVVHA/TGx7
	 VQwB30tXK5zZb2f3/bJASiU9x00MV464dLCc1TO/ERKBKBix+0vRDSnzfuIIq8bAnm
	 eoFACs0D4hRxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFABC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382825331.27402.13217246414828256521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3640852df4a30041814831645c4ea4db9b0a3f469a9da468ed07e5178044ca
Date: Thu, 22 Sep 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663828253
