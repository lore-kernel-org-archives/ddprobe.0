Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1BF182AE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1834C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686166985;
	bh=X8mqXYL1Mvs1mCqU9aOj5HcH0mLgHCOr0hAj+wcZV3c=;
	h=To:Subject:From:Date:From;
	b=VUdrSxWVibmTd9bmzCmAcaGJ4viKOPof3vO8Dh4xfA4l0pprG0AFimmnValXRFDa4
	 YPfId7QOeIanWjtXnF8yJKujGoAXUpvfYmDUg8T2OWXZWAg4iOi714gbbqU0a1RtUs
	 lX95e/7JJtcV3eWnnDWj6GGfxZiPz/lIXkwnzyfmjhVw4VAwrTQCnsAsM0o4wbX6nH
	 aFWWR4lR/6NjBfIozcrdttW+x+SNGaMtgsNVw+1BXOR1iQPUL51ygndwSyLQ09sp3s
	 HxL9nVIlMhsuCBs8zpYCJkcakbuICZ3LIDeIU4qH78yUN8VlYnbOaDaVDEtuq7meJi
	 7QfiiNxXlJ1eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C24C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 19:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168616698580.4382.10146456697526191891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96a20b84ecec8a1dad9efd346518184c0d29f6da036737185a3663bf7adc12d
Date: Wed, 07 Jun 2023 19:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686166985
