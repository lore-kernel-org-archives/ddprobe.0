Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBB127739
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC5BC433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668205254;
	bh=7sqygEwCdZmuxAnHTFisHEL/e9Mxj7wlU5TD1iOxvPc=;
	h=To:Subject:From:Date:From;
	b=Jka6Rf2WEkWPp6h3DbByX++jVE9WQKQ4NEeU9FXp9RyMkOWL9YBFSgZheuPGII7m1
	 d6EVi/yAxB20exEduhraCgtX6izrU7LKWcFvNgh8BPnAbNVFswntDpHyc8fiGbXi98
	 EyVvwt++SufXdbSSfuxp1Zk93MUDjV0JPWV7sz7UcSq6BxabI3P+imrg1BxA94nrqs
	 idNMPxDXWoOahiMyKch3F+hJvRqOIXR3aSyHA0KhKNrhZ58LuNztFzHdst0t2Jv+kp
	 SR2SPnue6xPsjSIn9gFyKWEapdEyXotIDoZRcuygHuxPFuV24LkCRcHIajGpju2iKd
	 zqBru/jkQ84UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AAAC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820525440.18978.56589391027143065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db36578ac6fac68c6e8758ca781cfa7ab10fccaca0444cb002f3cadc9b9f675c
Date: Fri, 11 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668205254
