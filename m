Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E368933F9
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E1DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669317054;
	bh=YbkhXzimXU+EpSxOUWAYLNMIaYjVgtP9TtYJBaBq8sg=;
	h=To:Subject:From:Date:From;
	b=RznSXuzz4Zzj4SsA/vaLZh7hLt8+1hIPtZz6P84HPBBXxIPUhC+w4IC1RuSD+tJEU
	 LVBiLMiI3Qf9eOxTYYSlDK/dR+uLG0TNXmpVJSXIh/E3cENRZ6waoMjBIBvtM1vkxU
	 zvNvg3u4tnbz8Vu9VX8EvaxvSF8DY2g1rSfXRcSCCwYUdOPc+8PmwYlh/YLrNfq7HD
	 l0GMaucUIUIke0pkDv2nnwgdM6KPtdpMk0uAjKJjhs177fWz3D8iQzdx+P6OMhLieS
	 BV5p89qU+PjShat5WbOKO8o0WYx6T/goSABUiaPB8hVD7pxX8/zS8WKqnye0RF11Dq
	 Ki+Yg2HMLCUFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675C5C43219
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931705441.20058.4706954296697196584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9525512e8e2b491ef6ed40c217e279491df2390f860133eed4dbebbb1376844
Date: Thu, 24 Nov 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669317054
