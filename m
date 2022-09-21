Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3FF1365
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D0CBC433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663723253;
	bh=UYdwOTkzaYwKEnMoCd4EUcdtBUZ9bRnyWJ9PmHSHFc4=;
	h=To:Subject:From:Date:From;
	b=g1NenPAqSx8eOPsvRDvybDOa6b2JXAm0bxw2E54YBJNfc+jTT/IqOtQNeazIiyRwm
	 wIXkhOAzOhypai+yE4pYSPJo+wnFJgLqqvUxTLNKQfhqE00/KzzzDmjJmfiUoSFX73
	 VAZM4Sd8A/mqZMqfZKS9d4Q7gMoEQcGnzn/mCCtfkfcnXuFJ7RTElu2w9qoQcZjMLt
	 A5TU81D8iCpPJ2d2qNEDuP/Cvv0O2mGbkrEvdxRnop1x3qNdA5Ui1ls16AISCMPXlf
	 THJq0paCJ+4PgdiJ0v7YkNwcnFuPaUUkTmFnHADDZHP1SdCTaL5r3R62D6clorbq4k
	 OnsAmRhgTZgdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53028C54EE9
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166372325333.17534.8899476935977530920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8ac45ce32a4cb86dff36aca73bfe15b932a8586c07adc2a7f66a464ad88b38
Date: Wed, 21 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663723253
