Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC16136D
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E291C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670405454;
	bh=omww4fTqzVPQR1rKurKE94fj4ZCDww+yjYfswd2Qf08=;
	h=To:Subject:From:Date:From;
	b=ZTJzLg3Zfrk5ZBHbyMNBJjaucla575cKpF+czTfNsSS/AqRf81K9kMWV11wzjny04
	 dZWVEYJRzD5tDM61xkLAfTdeAA231oesj6k6l502LdOeMmkkeZ159lrBbbrhPe8BE+
	 mvoE4rUga1Go7G6/Cm8HnEy0rUiV81usgBxZ3nLdt3ApaPvC600mvE3C/ufbzqlw63
	 jF6CHoMPkrg5XMcX2Cs0ANNwah3oNWd2TkUPkPTU2uwKxWNN2WoY79iU5SpOHupos2
	 7T+jyZ7M4Q4XTCsAu60meg+SZ5X2uJqfMhPRpIChX/dBcQ3I6Toj5I07ux196FLgJ0
	 4PPk54ff4Aphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50942C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040545432.24591.6041948057747999080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ac0f0681ee43bd0fc2c3235162c531a8e7750fe81f7f00b311589ec5ba254f
Date: Wed, 07 Dec 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670405454
