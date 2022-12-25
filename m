Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF08A8836
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 902A1C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671991287;
	bh=zisfyVPdaULGUDf9CHwnZIi/E5CGzoXqLtOwwRgW5Gc=;
	h=To:Subject:From:Date:From;
	b=HjvO20s77bqQDiCStnzxNb4lLd+iZHSgtVdQKqJf3RGDA+MlAp9AGPteGf74BgNZc
	 68DSmVtANLtj2A8s9u5C5Ow4MzBhHuzFsHFSzTKOsLc447yTu8OeDF+84kbLa9GR6+
	 zxc+r+Vn7KNvAs8C5br9zRdi2Mv9uJQxMYf+mtQVeHNKi/DQcGaS5cvkZWja0q9Zld
	 EPETWxvY1XeGqgje3kiCiqtPK1OkQm7QReiJKNRRLnsnZtGaumzQFeF/0TFZ81SMih
	 zcxwU5L8ulC/cKRfwpTPDql9vgdFLfce/6BxdOCbozIg+CKDGflV4n3rjUMd1QsVVU
	 LwhwTPcxjyadw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7148FC3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167199128743.19708.16603579918316813821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e16d5d167d4369f81462969d85d56b8649e4e3afb085c9dd502fe6b64ca751
Date: Sun, 25 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671991287
