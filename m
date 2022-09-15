Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD53B184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818A5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663281653;
	bh=mIY4821N4gvh3p8l/zcNAV3ClTO4r+EyTL5lAJanOx8=;
	h=To:Subject:From:Date:From;
	b=ggSMtaEBWXGUj1TD2GjG21mRwiITiCBuQs/gEPZI3Yv2DXbttrUWl2Cu8YkORUT9T
	 zT8xvMuZjVTm9GOD+FJ5/d4qZcL3XL3qMfdYX+ikL7LCEdKslLLMRkQP6N9LtOwPq9
	 zfxu31fIqK8rNj4bQjmtafWCFKskzmBuDVzVU4apZECAy6dvCY9pxbEbd52GHIJmun
	 SDrcjQfig5mnXe+VLl8IX2jG6K37Lv6Tse0qe+KMhgtDblbI59wIqwBh+Xaw/9wbpc
	 rRENqUYS9gTAu1qu/sJxgXkJKXfg62bSXtNRvQVLFlaqGEmEeGFwaGl5+b6L2cS5wz
	 1C9PKD4/5SaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63851C6FA90
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328165337.5344.355518507143611015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e8fab8cdb6357c803a6bd3767f77b01771f9f2f0ca2c6ed02acf70615e94af6
Date: Thu, 15 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663281653
