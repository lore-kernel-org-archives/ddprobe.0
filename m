Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B184A320D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CEAFC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663069253;
	bh=jqJpoq9IQrFxBMk3kCqU4H+igAjEeaUY/DpDxuuexKE=;
	h=To:Subject:From:Date:From;
	b=W7dEoliJf2kZofywhQVb8lZxbDdHxjOCdugSnG4jp6iK+L6/3HmqO1AaGy54SY/cM
	 CBxaVC08H9rnGGOv4SMZHz/Qeu0btbev4k3l/AjW1OpAfdelwJpK1xKbuZI+WGF/kw
	 tcGjRY2R2wwzbKzLTy/AdsKLXsODCHtOMWfl4TzZP5vEhG1iBc31DqHagHDEkhKKut
	 E8WVaHoaiYZ7itu3oJlHLPg9zFwIaeV629sL2qDPE32QGuzGb465DOPNP54j91R8yF
	 kIvq67LAHsCBmrnkPTDoXFLjIARDYkPZLIbWdftKJr5VU3gmll3WsamVlYFrkW7plW
	 yVlAOtsJ3QqJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52455C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166306925332.14560.10260864458187376657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2ebf82f04e18bf6d277fbdb40f5dda9b67778b1047b55d8473db93e8090605
Date: Tue, 13 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663069253
