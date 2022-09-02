Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA1710F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E7BC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662096653;
	bh=hh41ep9KqeLKc2cOb8diBDJZFcKvb9anj4Plgy3sraw=;
	h=To:Subject:From:Date:From;
	b=bKYPjOU1gn7EMWX6FYbrxDga1/UQbI1VaLjpQRDfeQqBHkFmj16BM7CZvAbtB32Ww
	 XFPLeYYRkMuwFq0MLe7t41rO/e/LNPeT+5RAbwk6aGxotirP01olkkNWxLePEz3Yts
	 i5s1YC7vI7qhcA01F3wUD14jK+7BUVwdxi6yQNeIeM558TVKf5uJGp1Vk24KTktEbc
	 eNC2v+38wP22iiJyYv1/p9LyGoAzU79R8sw4mkPxFr3lnRjrlXLsIAMbl/0wm/Q1py
	 /dj4KbgIq6kVrvUyn1R5YIy5R6jzIOU5sVkPOsjfl9NbVXIDjv031KCGKFebbPd7Nb
	 pp5XVHRca3aMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54353C6FA81
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209665332.17455.15838380546313534665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56f096e9dcf6fdf5237db8294134ffc9143e77e39a91e8a922d57d69bfd66a3
Date: Fri, 02 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662096653
