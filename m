Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6AA290F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8484DC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668028254;
	bh=ReNEx7Vjdkke8Gz0O4r3xBa2eCb8qAh++m6DLz7Bu2o=;
	h=To:Subject:From:Date:From;
	b=tTo11OHTHysvY/ptKoCj1V4opcEqYiTsK5zeJ36QRbCcRBsDN7IVBeuFSLC6DKd+c
	 6Ii/bG3n5t3Mc6mNLfKlUuyUl9PgTPjutyBJOGUn7XYNjzSxuB3B5rNvkhJsiZ+Zxn
	 81BgYi5sJWkQgU+b1fyYSVQo3OX7n+EdUAnEUp3tWA1Gl6BSGFPrXdlFnPQaTedA0g
	 j3k/vJpYQAvdnACUojEG8qzKRa/NoqeVEpUiPlKp2uLMaYNUOm25CUA9t3GZAUfiJ8
	 +G/1mBZ2R04v14H06v3zAhqlOzkMD8zkPXvnCBg/gupYeIYnFGcwtCnxu4DKIKGI0g
	 CD6e1dgPz5h6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64739C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166802825440.1195.15745396121112245967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bef87d1c67cab8545ec0850604b13e887b77f70f84635cad9afdded3d7e106
Date: Wed, 09 Nov 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668028254
