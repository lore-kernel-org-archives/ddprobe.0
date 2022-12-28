Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDB2923B1
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 17:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85025C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 17:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672249287;
	bh=kVhQ7s0rwamafC1EFAsBov1U6LFx7FAZy9gHXB0CSzs=;
	h=To:Subject:From:Date:From;
	b=VWsflszu0TGRhVBV+7IhnPFPNLco3Lu280TWf9Fyde2xSoaGYwt6qFGpHf7UxnJ1L
	 AAXOBU2EPDCFt2S17K7Y0SQRO6yw+cgkQeX5yPbELG7LwgmIM2Xe4h+/TfCITYqsrb
	 2+IddzNzz8kDNjS8GoOOGX9DLHWT3q2CRJ02iE/pdBcm8HKjNfbfL7POuStlON9eZq
	 IsIOD9Yf2qa3C2+mt6fOYkQHX/MeZ6DwBt54FPIHwIFSC5rNGp9PCFjZk5XVixu7qL
	 Pm9cN3hTSmhaHMCd3i73uCHazQ44i4YqsBYLebd5c0L9r+OpoHqMgiomfwx7Y9n+tJ
	 VWTazRcRSoCng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9A0C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 17:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167224928738.11523.2087074253508711992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5bd78e2672adfffeb42c3a4976d128981bed63b5158992f47d5b191a397e129
Date: Wed, 28 Dec 2022 17:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672249287
