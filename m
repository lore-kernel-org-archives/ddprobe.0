Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0F918A
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZaH8U7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97DB3C433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697885896;
	bh=wAwLlhNzsp48fibN4ogXzPh/cUTjfK1EoFEc9Diebcc=;
	h=To:Subject:From:Date:From;
	b=dZaH8U7fHDKAiVrocAdJmDA0xx4vB4BHqmiDxGlkZEojkiHJC7hCb1Ru2qKcZwBe9
	 YDyv92PWgQTJkC4CZwLLlnIQhP1Mupr8G0sLAydSDl15DAX/b6CMKPGbNVlazAztoF
	 FCTjGxbnyXGWTAv5yJOKZl3eGxxcx0uk8HFy8LgY1SSf9VuVtyZwdKwbdwuNscR2Zc
	 cfJdDVCvy68sRiaW+nHUHJ1EvB3t+/lGeUt9j+MbGOiSfT+4pz3dc8p6yId2sVSXIf
	 ue2KA9P78YMZ9Ml5s4tjy5oyDemMQV3yVrBNH6SeG/uhfBDV1e/RwC597bO2Gy9TuA
	 QZqCo0waAvaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744A4C004C0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788589641.22723.16112585745839498976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d608dd7c9f7b765504222073b0645e506b61aa46b3d8f45945243ba7e0d36752
Date: Sat, 21 Oct 2023 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697885896
