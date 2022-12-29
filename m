Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB1461389
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EF70C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672299687;
	bh=OPpV9eRKiKx9tVRA1Vc+eY+K44admY1W9dv+Syk2uFU=;
	h=To:Subject:From:Date:From;
	b=VJyDlaY8jI+eJUXBaQJ+N/la7DMlvT4T5/w2XrAJ/ARs2uy2L8K7qK6Bms2RnbSWh
	 P310R4CMJCROkvUs5ClNNNq5y1mok4jvcjzNcxTR7u/QfCeYOSouWVfEEpn4eWRpdm
	 OgB4bb9jSAswpW4vv08HyRyXOz0XvkSgo5+5CKiO1GjBqP3Q+dOl7V6Bw6pEW19qQW
	 QwLOlzE00KhTihBHyz05j7Mis4nD786sIhRx9cCZuxPbXWdjJtSirpx4KOzOkN0AZc
	 Kv1W+IYCC5Jf9S4VKa5CGmTfVeyKOpYEYX7RcTvq82Fc/wnDaJctbmY/yfq3mrKoIH
	 8MG4FnxjtmaRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73517C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229968742.20034.17190031461456131076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d76702285c3576b248e7bc9f40cb952c85671ae428f06042b6741fa7147029
Date: Thu, 29 Dec 2022 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672299687
