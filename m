Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1375EB27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E988C433F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672945887;
	bh=c5avOUblLvg0drZDvzx+asX/MyrFrdNly74A+EbtDWA=;
	h=To:Subject:From:Date:From;
	b=mW0yGI9BULN6GDT3N3TEJiMSzWOaCrSe6gTjXVKqlazdtigweYkaDVP+iRoZW2qoO
	 sMwFIS5bYbJ8I51zQgaYT94KA5xHXEX4NfF50H/U31FduRcFk0LMRdDfk05Sj469nI
	 v+J2ciw1HntFKM+Jz1phuKlr3Gl2SdOISuegDXgnvxi7pIXOR3CYyFLs+pJf+C411h
	 z0RbcWma9eS4gTY7euNCeuB0dUbcylGMZqm2ArCQXcVyGkF0kZD2yoPVE72h8E+d9U
	 Oj7EgRkn08OqP1hTpVIhXjHrxrQkdlrUhzJR1UXPCgJ26/7AtTnOU3nW2yLU20CjwV
	 2V46OFffvUzCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D72C4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167294588738.18306.4987763072662457445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86902e970071d43f85af87ec85e2e3c681df86b5a1de5fb6e8b1fba3a54e277
Date: Thu, 05 Jan 2023 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672945887
