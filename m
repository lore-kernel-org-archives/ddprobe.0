Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F207C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A4CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661622052;
	bh=5xkvB3j3TgUP+nIaMTDHGQ+M7MBE3YzKqmPvjBBClRo=;
	h=To:Subject:From:Date:From;
	b=KbMfMNFoBuNhjum514oQNIwlElSSutPPiZ146+nRHHwmHicN582u4Ew/XopAkeBV1
	 fo5kNji0wPu/4cob/4cLJRojoN2zjUkHUkm1dl9aliRfdVNHdTlaoMqQTaVNYLXMlq
	 MAgq4G9IfF6+xM6V2eR3W5i5Reffq8D8iKPl3QeY6+rpjwQwis/4jn4RKVfCfTBwsG
	 F+R3Bx4SNdCruLw6QlG2tQjz0PJgkdn1a4xGcwTMXyUIowtCvuLMJoIPjNXpVHFwaJ
	 mJpGIaDhLu4hH3U8upmd8CnrCxK5CffBE143Sa7eOrnDWucNgUabrvuFViSn2HUR+M
	 tnQ6KxER7+YNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58934ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162205232.23801.13812968474014797390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa70c855a0f540413ea1d92ee23f3c889600738c37892fd9b7e07ed54bc53079
Date: Sat, 27 Aug 2022 17:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661622052
