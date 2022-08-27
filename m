Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB29915A3
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73281C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661567452;
	bh=HeuTqcNPnrn7nZfbELkF/YU/M6gk1rWoEUh/nTLklMI=;
	h=To:Subject:From:Date:From;
	b=KTHVuPG0yqwF5QjL4s/+h4uOVPciFkFzo47LXLJDeRsQTkcNuLMP9zmqIm+AKwKMz
	 aQrrkYn59AyOZZTh69Kpd7Mt0k9x1bbx/bYBJ1S4t2auEWG5GaZZ04lkNImlXHhK4p
	 wXR4wZ3xfiRUIj0wfUGycMdO18+D3Zd3de80qylEIFzeyTARQ1kEo50XTqPaaYw/Ln
	 nTc2OLjPiDA4KC2CK5pc40DSvOla3qIwJbJFVhEWQQGQkrasUgpdDHKdRrpnknzLCI
	 wcTgxv3grA5rp6dV2AtemoLzHMAkoMHiDJSNY1BLJL8addl/E17Xq+YfAlCn9+MfcZ
	 twcfIXXo63OFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DD6ECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156745232.15451.11173022950863192682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a517ed4851622ce5c250c4148a6a14e7e9f19bb7743ac578fd5f5da3265bcf
Date: Sat, 27 Aug 2022 02:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661567452
