Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D871DDC28
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773291294; cv=none; b=oswkxylPG1mxeowjmMBLBMVngcGS3Kl6bWwh5sRYTAob+Pf29x6Ao7mB3pDKNHvanrJN7orhSsD/OM2Nsjq2hiUWtNipl3qaE10TfM1s0iJl2edTv22AlPJsoaBjgjaP/BcC2fbQX+HmTaLFv//J4dmgYy6TJuEn00LEDVy/W3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773291294; c=relaxed/simple;
	bh=f62AjTx4t2dnxeAOv3iiYVqWOBp6jrebFUHM9HvkCq8=;
	h=To:Subject:From:Message-Id:Date; b=lhMBETLmxUI6M3RG2Fi3ys1KeM6oDaKomXDT6OowRa3uGS1Y+q3xMG4JGlVsQF9emhSewhd+jCdcf9u3oNHOY5ARYxAPD0t9pBVDmZV1LX8+EHXSS259EI0GgiaJ/Bd1Vsw0nadSfF/WRTSxUDtLzCGMOviMecjZN0Ge7UrVX7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ul5Requs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ul5Requs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B0BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773291293;
	bh=f62AjTx4t2dnxeAOv3iiYVqWOBp6jrebFUHM9HvkCq8=;
	h=To:Subject:From:Date:From;
	b=Ul5RequsrJh/AeMYD/hJZXoUJs/yeEGtwk4km1uKOeYWwHLd3P8YfvNu9YdFCgxGI
	 xwNwgzW08Lxk2qPPF9OwlYftkIWG37NeSWN3seos1oID+FSxwYpyx8oRDU456UWPf5
	 H3t+2H2IpveomF1xpZEpzOZrCFeGRrbtWs1PUru24BR6M2SHvK4w8xMJ/rcn6MMB0z
	 NET9ot1s+dZLb1ptxSNtvfEMnszj+7Nw9VanPznRcqtcfnzmZqxlJm6fUVnr9rueze
	 WfVuiBVTfd2Taz+VcB7cTZg31r4GWnzf6RPcYdLbEGQ7nccMxunSTHGG9MKR2HddfA
	 cvAtqiIzWBnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A39FED2D1
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177329129357.2458.13413379271367820634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05485517d47c9a92fab9779feaf0687985152d9765027d823b31a98aa804c46b
Date: Thu, 12 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773291293
