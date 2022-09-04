Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3D063C17
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B203C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662329453;
	bh=61znNMi/gREVvir/r0g4ddaAEGVAfHmzjnqJPj7r0Ng=;
	h=To:Subject:From:Date:From;
	b=P1PUfZ0ynxOeSbUWaV23eEKogGGzEPZXcgXEvq3Tqkiu54uL3No7ukKKX7jcxSzuq
	 2XtW1OcXXLOl0qo8BretMrK7ZrTDpQV04DsEg+Hdef/SDYzMpb6TBnazK+E2kIx8p8
	 9GZsLOJEJCKvvKPT2iZR5jauE7mwywMuTTibMfAgEZTz07fbgX75TixmxQiP6825GP
	 ChCYBhc7o26ERd0OeLiwyFMKzj+XSwuZy4mBLZrm7OdhDRTngpNpFalqvaKcg7A4EW
	 UaBXTitxKUhX/xZ94x4JaixvMTbWUZhniMah2AE2I2AFe47EHpa/ZloQqS/XUmLGu7
	 a4g1RtH1yJudA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F35C6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 22:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166232945332.16908.10527930679209349083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b295727884f07c22636adfd186e748a211fb198dc35d6aec440be37d28652d6
Date: Sun, 04 Sep 2022 22:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662329453
