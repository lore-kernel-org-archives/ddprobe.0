Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63322810
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C649DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690701728;
	bh=BVX2BUaaO+xR0/uYGjV0wT4cNJBG6mOT7QbhohoehM4=;
	h=To:Subject:From:Date:From;
	b=mgwcU3+4GEgKS+BI2i6ar48kjTBzTV0sSXCabb7nKwutEkD0oJraXoevhGVfFhBJZ
	 FSAhDhGZRfI7TAOShhiONsfpwKG121RisHmjw3TAprgy9jqozp1EB8pAXYXHHJ7ouN
	 ZfyvQDVAmFqG3oT/cFZBFWq/KXtm8q7up8A4u275KticW6tOB532WIKPP7NPOxnXX/
	 X/IrvZaJs400ejJapGREYRbvPAXtQMFT5YPSIKjRBgLIdRvFpdT0ZNBry5ZXTJuhnT
	 9Q+BmX4f9wPS/FygGwfrreJwekid34KdqR4XhJHU99WdeSGkbNdpv++k1UU+cWXYZZ
	 0bX5KGszG9gLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5230EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 07:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169070172866.5998.517414228160303608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d393598eef50730c9cc9b1a8741e01cd008140ff2b182e7eae890cdca4ceff
Date: Sun, 30 Jul 2023 07:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690701728
