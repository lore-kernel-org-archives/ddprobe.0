Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A24917CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E118C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671792087;
	bh=bPj5DVACpmp8jH8Hq1VpxyYezJl7WjSOesG3RiJ9tpg=;
	h=To:Subject:From:Date:From;
	b=NvEcgiV0s6T5P+P+o67psxVrgllWFgdPQM3/nPg3lvulroU2ykR1zh6NCUlvMRXFg
	 F6x6fvMvKufeHO/8VbLGITXUhoHTsSeRFnqTK8FPbabKn0ebU5svKDgfeXZRffvWhc
	 gQUMUHQjSvlzReo1ggP4PHTWA1O2UHp0Efc8uXG8Lq9NvuLHGSC5/ezxAOjT9HZ6Jh
	 sGYeKPCDIA2euBNEjyvO210hTHb0g5QEaWbZZpGIJcjc0MhCBXdQrFmY+4Yk6pOyzf
	 bqZeBVB8kS2utkopK1ESfDQTefM2hGLhbsxq2ZfBFJGuGR3FzfLf/dgS1rrHMtB13h
	 Z1ARut1BKHemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 824B9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179208752.4523.11783105557804098721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921015e3d4cd796edfe0a99802b08ae7957c2fb2ff28ef8d0172a551860f23b6
Date: Fri, 23 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671792087
