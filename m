Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD64DA29
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B51FC433D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667456454;
	bh=vWJ1gXbsDU2mfDk7UgkAga3ioV8eQWc+mKeJXBC5Pbw=;
	h=To:Subject:From:Date:From;
	b=Chu0L96st1O4TNLqDTqAXDzQnTVkNo9CrOLnH3sAJwHYJjjgjkLfORwz8UrSlZHXN
	 wirW9wdApaC2CjIDXHcMMcedB4WlL1la9JoKiKyxNSHPPEMHb7ZRa2Mvt9fr5IGRgK
	 4q+UTVN65C90aHyhR5k9s6yK7G/lQIfGFSWv5nYcvETbEDyDCyc+l6M53SV+9yS4FN
	 +PyQS5QFXxnhjLF8IxwOO4k1nJt4swyaGSckJVTSnXjMzmMdWmVciE09RRQM+8i8P5
	 U9W2WtREOsAWbZchdoledh+/OzKMPZA4nUcuAPpgapMogIB4d/w+zMp/Fc0X9YRHoR
	 v5du4yn27mcPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E29C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166745645433.25265.14332622550493099379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 100eaa13d3021c6c5056b8fc911d5c7402e6f030457b2c2ab92597f627f2b575
Date: Thu, 03 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667456454
