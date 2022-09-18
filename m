Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EBF80C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F07CC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663505453;
	bh=Oy+Spa59B3YeK1IFu2zCBYB7yHJWv4rGsXYzC8/KyTg=;
	h=To:Subject:From:Date:From;
	b=ZV1NXd0WprWdLgrs3tatlwNfU2leFaUnZybbAK6jwoExCeqKPWJATIrVftPiPBWlp
	 yXIkpD3iXRn3JNi7m3USsd/gANovjpIB3/Ef7kkUgzRjf7imk7CMc00o+1fVneW6MV
	 GR0U9tgYedyQvFHk7mtfu17jU3j07DMQ/gArqUaT3W/i6mZzK1F+BS+VNEcnbxL7o4
	 mxlxlg0TGVn8d1161ECiYB9LK2u4+5CVi7OtGT0IMnRdMipue2VX+jSpbxJ15Ab8cL
	 xn+ZYrYjFQHWky0fboRTwKqZSckD3oemnXVe03OMreSJDfTN5na72v0IrqACHN26TA
	 URdIZjj0sgkfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D67C32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350545333.32102.478066677137782874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf9f04f2a81877153b4d8e213b5069ee69af9a9862b12e5bcb1dff0eb5e9de3
Date: Sun, 18 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663505453
