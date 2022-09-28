Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB97CA31
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D701C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664345453;
	bh=x9Jdf8ZHNWOvPWaY9sB4rESSXIBFVZIurK7+wd6rr+E=;
	h=To:Subject:From:Date:From;
	b=YUvPY8/4gJXXx77AoKD49uZu4b3GZEn+7bLCKe855CRUGPOAttGoJnZy4PcruCGOw
	 nuAVKDtD2zVoAPO6Ilno15BrvkyibI/l9dNvb9kGjAlhibW4B0pQpC70ozccLNfxrQ
	 pAPXZLY1M1/dhJJ5upGuMKxCn1WAcTe8nX0Weu7jOPDCR59Y9bmJD/J2cAawpWk+zi
	 AmxAe5/j/9tOnBBI4C2C52RHRyZrshi9NbSl5gj4RfGm0oHqbclp8KrjogBssqCUzW
	 3Ml3Zcn1pzvrYmEYBu+Z22RuxrZMWflxk1Bpk13G5E6K/HDMADDV7W5hzXxKzP65rr
	 plIXDK0MrfJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51634C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434545331.18209.14672044441150776364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49004565204943da73315e28c88d7a12366c828073fa46dfe37dfa6227b6cbe
Date: Wed, 28 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664345453
