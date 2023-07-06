Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500C863BA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C605DC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688684828;
	bh=OiDQEI9K7TSEj6bw1Yh3YcseBvxsWrf/MWSf3BZk5go=;
	h=To:Subject:From:Date:From;
	b=AQ4qPoLindlg5yvA8q49/y6DuMedMV4G/UbK/fJTRp7eM/ybSBQWa1i1ETdPrASzV
	 wcBipu6Xd0EkS963vcHEMVjnBsJLyN9NrciLX5H3JMeo8HyUfVyLEMU6fh+FM0A92I
	 mrV1FIufCDHX7ckNjvrsouCazdHNscn9UTQgX7mrl+iwlxGQxSOkNNaQIBODGNWijE
	 lp7PZD7lyFsqqfykTqVl5cpfGpZH2qtXpFTh7Fj2z4mFBhI1t3CYCTdk3QYOYVaUlx
	 TyiPuMWTtZPVffUbh4goqf+sn4F3Ckg0iY4b+jUpdWgE8L34s/0s2j4Z819W8jRkOh
	 0ia4xAbRTd2vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C25EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 23:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168868482866.11469.1852352347867991311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ea9e2617b5037034fc3a571c2bca17c35a957969c51a51d5b97ded2bc0fb5f
Date: Thu, 06 Jul 2023 23:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688684828
