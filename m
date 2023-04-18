Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C41C02
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 15:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D853BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 15:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681832945;
	bh=XgedbtIab+i46xFWIKY6Fzu7y2Z3saopyPlEPFHAqtA=;
	h=To:Subject:From:Date:From;
	b=u3xhqczQrZZYul61Us9WNPf8EIW38ynO96iCTNeBvZoOxqnM8mjWhj69sAcuMoQww
	 0V1XlorlOmlZVOmWMq52lj5HIsPyss7VlkqJISjDD1Der/V7hpUshigw2SBjOzfmsy
	 acn6PiC3AR2ZjUpFkgsBdyRtuhARpDiNE1FqHbfoaUFsjjyDcI4snSFbOhoeIAqxDv
	 WVtR/7z4wC86DWQfNKu8gATmBqsKakuoVWtSewblU005PavxxHTCENMfHH4HxwOn7f
	 TJkCqVuaE5YzGs36JOvhKvWXMG2exQwyYQ81z6PC0tsdYyFUAMhmYnM7/KnUiS3I1O
	 CJuRQiS96MSpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA50BC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 15:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168183294575.432.3231083084855433346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486f9e12b2d71c1cf5b239e373f85d507fda56070a894d3b5e6d254a676959ad
Date: Tue, 18 Apr 2023 15:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681832945
