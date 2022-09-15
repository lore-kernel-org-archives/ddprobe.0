Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E3217CD
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD92C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663213853;
	bh=q/g6A47OTYxkokEOOGrvab+n+BgkOnWnOlyKAXXjyk8=;
	h=To:Subject:From:Date:From;
	b=CR0jsxg/0l1xItt/7bLQwPnrPD/s/I2owuJ+VAm28WWaG2nSzma7DymaYLgzGBYYK
	 c4uUnIXEOTTnjTU2Hg+yLV/e+0L0xYYTKah7ICdw4uRtcst7U6hjlFU/H7+6Hvnneq
	 81N/BtgrUBkLUs3nt9EckDEoM1+IyB1bVz7cLSuKHgBIOCTnh6742pIwoRqEh9S5ju
	 /VqMthtDtFSkvGAWrXoYBg4mEfbg8hr/p9sSLMxRfOf0MPPIFOqH8+Xe4UZHrPbdcA
	 TfuZsgt2dkHIZvER3ENZdSUNmxC+wMAe575d9iKkSd3EJuOTkOxXHuGO5wxPVYYIW8
	 9N4XfnXAq3OXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58084ECAAA1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166321385332.15945.1234485159465415197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d97ad6fcdcc9fb8118d1bd73a6162eefb791015183908daf81134cc90934afc
Date: Thu, 15 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663213853
