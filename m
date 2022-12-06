Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD95B17D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B52BC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670292654;
	bh=zccMUrB6JSt72dXvf6askdSm+XJ85wdQYi8PF22LbqA=;
	h=To:Subject:From:Date:From;
	b=AZ/Si7XGKfZ4BZqptKCEOZSohcqaS16KgGuOgdlF/1aWNrDudjG0t/JYFdDcvLIuF
	 9hbK9qKsrxa6zohxBODUiSzCtFnjPBVa1oJLLlN9K5Ue9Kf2dYK6EQ9DekYkxPeX9c
	 h5KW4FiolnAEGOC8F6Ge5HQfGjCixXdF+F+YW25N2pG931x/3gnFg2fX/nzFVI8X2S
	 b4tcwInKbP/krInQkW3XVR5MiUDKFM3fz1mCpNuU3OMXUsslDH6hD4KK3fuLRlgl2r
	 2nQh6DNXAh5tMeDIsuj0zwgkOKvBp7AZQ7v5MiECPUquvS30uaVoS0XySJc8UGqbhg
	 SolUAqHSDLQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C71C4708C
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167029265434.915.6134511133582178687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76bd0d3101a5b0154caba787e660883910ababd72ac33c3bd0e54a431d431bd7
Date: Tue, 06 Dec 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670292654
