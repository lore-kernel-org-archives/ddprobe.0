Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B298715B3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C5BBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663125653;
	bh=Qq4ZuGbhmZMl8ecpajbc/Y1Qt0l0KBsiDfiGcR9YIiw=;
	h=To:Subject:From:Date:From;
	b=tkcTFip8OokmmWNMVHKwX6cLsbvf33j1ZGpqoPonOBCN62TKv/P85dDYK220K9eFS
	 4FUTry/Ub4dZAo9HpcuGc8x1yJu1DtcH6pNGYPZ8/ENx3s5Sr2/Ar//W2BDLBNt/Z8
	 YRWcPNgYgYi2igGVoKVzFFCJ2MhF4IP1PzeF4d2vtncfHqNMqIZ5uT500EVD6ELuqX
	 HD8GdNAHEZ1yy3udlzGlBfpydAtaz7aXWWh2dGS0q3lttqEmgAkYp6DS4ZTL96vbLc
	 +KwS/uq8VXQdXVFAmxHkxyzMPjGR2CtuOoBgOmVWY4w1P8DRJiKP7fzIXIeHg4CpmZ
	 jZW9stRu1bP6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 551EBECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312565334.32348.2643206318520206657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee659c378a5d527e60ac3d1a129a7318097ed38e14757d528d1b60595987e41
Date: Wed, 14 Sep 2022 03:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663125653
