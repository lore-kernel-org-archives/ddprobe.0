Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727D7180
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC64C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688956628;
	bh=CmR3EGnLQFlcAGiR5b5k+T+31DvqRkLL5XRUm9M+3PM=;
	h=To:Subject:From:Date:From;
	b=OuXveyLS6t5lXvI2HsxbqoP/WBpXHB43nQ621ujhqFaYv1aKOGP4oMo+C6zuTmh8r
	 2piEaiW4INvY6FB1VFmjDGRXZAe4ANobjPkweFEqspZQ2V4pYUc/zfZnBhmNAFXTf6
	 F+VHXAfrk/9iN5OXY8CCeNOCnL8CZyJZfBeuqLtlOOxDo1gI3LdBnIhlTETUxO/fIg
	 hp5WhEgVL4xYd7s+6ZDuSEUbIAULRGwkdbmVrcGtrT7WK14QEWfxLddScLU2NJes4Y
	 IUf9A+upuPlOR7pLwIYyjEo865C1Nk7cOb+RfUKvbeIJKMWL4/SzIU+8GY9JZUQx53
	 1rmz5kDmRkIMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE53EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895662869.1703.12516829244489317348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70508fa790c00c486d9335319ca63a405659788925eeafc075f8c9db9688d16
Date: Mon, 10 Jul 2023 02:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688956628
