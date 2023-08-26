Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6750A37C
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 06:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C636CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 06:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693032248;
	bh=lOqwEiuTsgLe/dfC/PPPFry52aWtX3mi7Yzm3+esFmo=;
	h=To:Subject:From:Date:From;
	b=uZWo5VG3MDrtP2x1w3nmdc+zy3Fdt2CG0RImfkDsQYTMVXWYZJtpqMcaHZjgRw+xM
	 2J6Wh0mxnuPO8h6P7JnX6usCP/RlpJF+ukrcfFpz/EUHiLO38BKIW1nxRqjueBYEK8
	 hsQhdZZKYyJy7GxMDS1mMkAQWp/konrmxHfh1J2RFSM9O0JoQljtQXQO511bhnlmFy
	 5zlxTEh0uUe2pvbhVE2HfW6nKxgXTd+DU0K+RzamwVsNVymuAwQv184SCD7BnOjsTF
	 i6xqCUjNAAkKj20U/ztxAidTtGyhGn3utrae93QGr+PLle5ElhVDeBf3HO7IqF2lRV
	 SquOLpF02C6wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A750AC83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 06:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169303224867.19535.13259862929772527378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a166b726eb2ef787db2ad6942ad0207918b06b2c2254fde09fed0810b0f75f26
Date: Sat, 26 Aug 2023 06:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693032248
