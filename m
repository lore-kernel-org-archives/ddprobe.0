Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C39185A
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D054C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670686887;
	bh=dAPGIJ6cS90HqxuzOLjCkPcbI7zSERDMKVcPUWDmoDo=;
	h=To:Subject:From:Date:From;
	b=ArhZwMo7PKlWaSS1fCXmDpCDrgtKsCVkESmKlHKGqJsOySjayCin3D+SghCn9SRgU
	 74jVxzUmqS8wS81zCa9TcuP5yG8YPKj1mB2Ts2xITUmMlc4YoERp8acMhQtWgxt3Zo
	 wJBtihBpOKBqqBzDO1EzqAgtNSSYou4zdzS/wE8WxXWyfX1izwK+SCVeXYUvm08by/
	 5ACpoejVI19fKWBHN86loHCEcTnq6gbaepdSUxShv4qTmyiwoSUfUWDimzTdhUeERu
	 jv7q5pkt8+lmb8iVRkRgkVvZSoMbMEEcn/7jJMENe0WUCaP8WBinMHtG+FoK3Q0nqJ
	 u/YyCWRIar1Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EF3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068688739.10258.13264538837860385271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72b5a134ffa65ff9d8a462b131abdf552e7e0178805a4e55ac7cf9aa563c5a0
Date: Sat, 10 Dec 2022 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670686887
