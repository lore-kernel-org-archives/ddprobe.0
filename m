Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35FC6105
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BD10C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662748853;
	bh=ZNYwC+lqR0PxjOprvoqjo4B4UIfmSmZXBegUL5QcRvk=;
	h=To:Subject:From:Date:From;
	b=OHLobQGIkceeXA+KbYdQb/9DBXxzaBUXky9O5Nx/3c6uk44vliy4jeOxvb/Uw7fNc
	 FLSCVsZ3yROeHFuQGZv4UEh1xcPVwqDQOZ859Pz6++JQzXRTEuYs4TeJvlTAEVArEF
	 tlLeqX2jF+11JFymZ5d2tYDAkRKaCHPpnyQrVijABplrG1xUCvVQpzrGDXw8vvuyG3
	 D5Zz/4Vto6xMpYXgdHmiK9HmIfFB7fxM57YVs/C2/sRxfA8jVtzGhjGhIhPy1IcSaO
	 1DZq6eOKCUF8A4Tq5S9mocEx82vzhzeIS+Pkt6dPrdLGWirUgoy2WXjPfrBsDj9Rdb
	 Nyw4B+v5jU2SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53538ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274885333.18140.3208390089423335824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54467c5eef14a4600cdcd9060887ccff75509c19ef8eea383e8d779d8f2b47b0
Date: Fri, 09 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662748853
