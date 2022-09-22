Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0ABF28F5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AE9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663839053;
	bh=VCsS6PlUM+kLqlr65KPZi6PPP5qT1F3v4U5c9u6IZe4=;
	h=To:Subject:From:Date:From;
	b=uokda4rgvFP9TsQcsIp1FwRPATL3udQIvQH5GujeF10be/bjfP/33zlG3DQwuRV4g
	 +GDFvz6j8DWMGoCa5JeCK2ImJvumK7Z40wtQEd0cnrWdY3+/TFDQHl0YUYQRqE6K8q
	 6XDV0znmWcah1lfkOZtteZJQu5sMSJLpbLYN0IjIP+LRwJNBUiC2mzNRLs+UvktJjh
	 +p21eheQdIbKdiR6EAsg6U+eom8pk2JRHK0mgCXQNBfq5+bWNh5rPM6v4zzEBUuGqc
	 HkC/t/x0ue7Dyms/mZc60ggMM2A3XP8Byd4AqTWPSNovY01IJ+jN98rmZoo+DK7c81
	 wlaWCz2A4k42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 583ECC6FA86
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383905335.5885.9281680793742012609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40266cfa0991dafc6f24da1d8b6f7f274e26c724e9e1ac08cebeb87e2b4e4a87
Date: Thu, 22 Sep 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663839053
