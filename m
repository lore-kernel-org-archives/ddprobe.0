Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80AEDC2C5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0D40C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687197129;
	bh=hLq6gv8/w2CjtwWKsOoyiKZWKGynTer2t9VkpXFgzA4=;
	h=To:Subject:From:Date:From;
	b=s3IFH/b7OE2FuSKRcw/Hl7G5pvYNaZCDWRy7K7J4FESEjV7XkzyqK8Pc6UOMzhdD4
	 E7YfE58PDfipO1JnY180iYIF3ks+JToTpdKo3HZtulG97StbxVTh3AK4zMMiKIq2if
	 mGsO2k1cXR5O3FQHuFnrP+BtZj4Yw3Vx7xdKO+3aKpI0CsjVZqaEBPpT78kuCvzZ/d
	 SSdLrQVl3SNAnTuvKnaKv7/OgjNrXBIyxOfsRwdByEXiuu2LigNDs8eYs6jsyOVr2k
	 Ylq+p2lqg3qnVHfgHdYfHAyWb57+BBiLCx2NXVDOtjbUGeRv9LV3pJflT3ESl4aiRJ
	 r3vh+T8AO5BvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCEC5EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 17:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168719712882.29015.13628162315070209719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e58aaac7cbd4b194c1ad44fee6810515a5b6dfc71fe4ee67ca00c1fe7587d4
Date: Mon, 19 Jun 2023 17:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687197128
