Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A2329A8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8AD7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682269865;
	bh=8TG5y9FB4sWgoniXutrvgZT+3A3Wb1/vu+xKw245ixA=;
	h=To:Subject:From:Date:From;
	b=OGxinsusX1whkXKYwMaZKSta2M5k4O224JSgal19jVMdh6wgsjxdOWg32YKHMj/V9
	 HCQOvQGoyVNapFsClFY9/Qon01/LVuzI9wN/9Ak9ILnW3C3sgH8W/SEk5q+PdpodYW
	 mH6llozTCbnFYyBih2JOggEw7AkQ7vpVdXXs8TYrCUocLUJDTf7bfHF3ctfOIx9EZl
	 WlRZohxFvZiO8HOgNloWNEDgYcURLR95N4m52haAlt6J2uRfmIf8l6Nx7QAmBS3FVy
	 88fLam8k4Xgv4DEJNcRU3wIXWGo8b4ONJkv52hyndTaVsjGIq+zeXuYxuAExEBoq09
	 PeS8IJSSCVScA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C91ECC77B60
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 17:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168226986578.10695.711172691914485046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23873c50f9e26466e1dc007b5ebbce3e6392fbf56ce91c0f00188b756f6a1abe
Date: Sun, 23 Apr 2023 17:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682269865
