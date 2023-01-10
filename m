Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C9C6FBB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C585C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673352087;
	bh=Q7lrFpSvrwAyUw+vnRlWBSAv8y9lmJ34ov27/agaDRQ=;
	h=To:Subject:From:Date:From;
	b=TwU347ONMfGbusNEqCYAjAEfxSIxqqiG/OOlAul+8Zkv6dYw/QB0USKShsD8YoOTK
	 RJl6NFbv+iM0bxascj9itwsHL8/9Af7UzSUPT+sAHkifxJ+7zFvgEYinfaRCG1t866
	 WdSC1NDWW5w2GQ/yNeLtqCsK8Pu0Vbt+K93aFRYX2a+tpkPbNZ+JlB/sNoYfbRPM0t
	 Vy1hTGsGXr+Axm8I7Ro4Y5MsrblZ+r4GdOUNk3h03cRmSb0sFKXEmT5IKdbIHizGTg
	 QgKb1JZn+L1f5UyRvfkB+neEV/DXkUVMP11oDhjzTi0gFDXI6seXHSVIlY82kQyx9F
	 V2MdRpdNqY37g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 754C8C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167335208745.30707.7306450862052918186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96a7779a0dfe8c3c976c3388f8999cfd86ff09402f800bb03014d1b5da7cbeeb
Date: Tue, 10 Jan 2023 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673352087
