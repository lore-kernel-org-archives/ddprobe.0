Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2707C
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76D34C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668568254;
	bh=ZjKHswIZiFLUc8sdZ7lx2nHeDJriQ1uV/BAt17GApSI=;
	h=To:Subject:From:Date:From;
	b=HpOAtgzouOsfXeUucmg3GNh3jL98bQPPr85bPjXHurehdivQbO/UwnMfmBfXiyIxh
	 NjlQF+Umx0OO/qmhWlOsB9mrlYRbVnpQopu7ECKxR5iwrKDnOjhOcMa/nALITUdF4g
	 aflLZVSgeg7wvaVdvpWGHImvTLOUdBQ2Nt23H6G05teTALeUs7CJg6Qou9LFxwMK/Z
	 kCFjpIPYipTnsSBz2cejqiB+XkY3uf+uqgxXeiDF3Ol/5UsfP6sOkX1oI8jnSFbQRa
	 DwQ+ZY1GzUqxgt9BeGAKH+xLyla80Pf/PIBqqD/+4g8PngdvQ8il1UqrKJQZM5t16V
	 DJ9HOsrKLyZ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529D1C433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166856825433.9475.10171744398423290237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486103c34a1771e96d274878035eb065d34847bc415f596a38abf8cb2b6ae32d
Date: Wed, 16 Nov 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668568254
