Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAEE8BE5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 13:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBBFFC433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 13:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687182729;
	bh=GhSY1UrKriqeq6+CLpCSTkTYCtT2mwX8rxE0pyIA0Xw=;
	h=To:Subject:From:Date:From;
	b=cpbGoqOYgGfUfEhU5zo2DridC6BHCQTP6MiW8JvEzyTwxb938PNj/ooPP9cQVKxK7
	 Kvk9n6kKFg4F8QwQWyJ0Rf6z4Yl+fxq2jSGGT/AXycf756l5A4YkqJGD4S1EQkZixJ
	 lxhTDzZE6f9UmjjIT026hZ6K0Ce2rIsKxm2JJY56fBRJpxVmw/xFyMbEO0tE9/45JW
	 qQtY/48UwkivW4YW2z6sOV/h+limj2qOGdv3Zy4bd1siIn+bO0AzBrsaRxJWu9zAwO
	 SY3ZRrQINZxvaWOSPBQr5w4z8aN2EE+zeFCm1VD+jVzf0HPQeLmHYP+rlA1qfFsYST
	 t57zMNEeEuEtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB962EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 13:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168718272875.3535.17401066417054250510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3705980a10d13572e7ce288ef85902d7d7b11e3954ea796f0b56b5cdaf07a1f1
Date: Mon, 19 Jun 2023 13:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687182728
