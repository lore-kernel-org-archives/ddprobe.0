Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57F12C9E
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83CC7C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672093887;
	bh=0gG7LaNwAx+BodN0GPB5t89YkKZbgHUtAA/Nksbnxw0=;
	h=To:Subject:From:Date:From;
	b=rSnNpV0yRc2pTUK7uAsgCQo5QUhYfxB4hCzYsSO1Pjah5FjO0WoCraX+nsXcUYdYk
	 cswzMs8t4TlfP2ItjwZJODJl7gT+olL/OhroKRvm6KJ8oT4MtcsMYP3Rws25uXoYYB
	 TSXgUJRVl4XqL/bkCYMlmeaab7nqG7sd1soBaI2AuSutxoCdk1Ro4CoQprLX2vY2It
	 KU3/qf0nRo98yfdmcJiPg0PIwa7h1kDsNr3v7JftVTNGH8X1XPoHLQbuVVHCXh5IC4
	 TrBj8XAPadWPwJKRO2VDt2TQ60rewn5SDIoDpNdAcmMzeZtSEznc1BroA+OHDM4ZrD
	 mWCxvYgJ0ZD8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A030C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167209388741.13564.13714574308788562918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03959ac4022d2c3ea9649c321de59991601c930f1ea043c683365df940757c4
Date: Mon, 26 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672093887
