Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ECA72DBC3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01516C433D2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686089526;
	bh=mYtR5QE2OTYeJtvg5x/Q3hqMjz206HIpZ36igNN43ds=;
	h=To:Subject:From:Date:From;
	b=d9ZDhI+tGEK4T2k+2pLTEOZRDWFW0NwM0p9xDHTSUOiIJr4+B6CHUcrtIicDDd0Zd
	 JZ3NFbJ8ddtgu+Hkw6KP6RzNN9CHE7qgGEYG0esXFzi9QfjytDHo2Hs5/7c73lnhnX
	 Utuc1V92GCCARV1+HS5Yt77Rec9huLmvZF0YddHKthz2eHbI71MJXcJuLan0QQCZbI
	 r4x6hnTWNeeNb3EKZtJKq9yAkrz8dGr862CXWEfqkYM5kxx/fC2F+1ITup/QpCegYb
	 ers64BFXMZgddrFxmIrNmoreQjd4nzcilZLQ2Mlq0TbfRySirX4KpRmUlCoplvtmRF
	 EoCGkwh4vwj7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC407C7EE2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 22:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608952576.15078.14802263972211868418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f76df9e82ffdd3081fe20845bc06f459869317e03c1a7ead532080e01cefff
Date: Tue, 06 Jun 2023 22:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686089525
