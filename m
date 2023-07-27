Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1C8538B
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 06:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6294C433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690438328;
	bh=6ISrQJrb0pLfSd1GzoDx4PLC4XpHQNq/1/jcaEJpxx0=;
	h=To:Subject:From:Date:From;
	b=aJ3fwKIenCFE7gS1H9dCGeV4ZsgEP5WMxOX1m7v9CX+gDg+bYNsS3iU0Bz88RyUyb
	 4tHZACwS1xRl2zT1kf7A+K/0gNWA2bsr/4jWOtGGR2Uw+OW8O6oR/t/FerTfxqeQsz
	 SXJqcGlvmufaQ3pLUVkvTVieuEVBFzM08LVzhwN9jWd+VgjWUZ489m4RMZeFfnPh20
	 dhfFgjcp6Eu7Rk3+LKkXmfta7l+m2TGoWA+LCl602q9l0xkJKTBOal+X8MyD4+TRvR
	 hgn5Z5auubsEscrQN6qN6ESmhyLNm8qpucaRAcEM77UyP1tcM1FhGUdWfNBFGb5Bq+
	 3d8e4pvDy3JFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F3EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169043832868.29401.3419552275298191009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c577bfd7c945a24239e1ce7ea2d686491d33117eb3926f26f35742efc722d73
Date: Thu, 27 Jul 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690438328
