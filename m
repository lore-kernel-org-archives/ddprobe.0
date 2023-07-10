Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674CE180
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCBE1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688957228;
	bh=hVkYKda3Gi6w5Pv1GwvSwjc7BbOV9406O4vErMzdCJ0=;
	h=To:Subject:From:Date:From;
	b=kLDUMR7VzitjX1oMAmZjrGR6w6TxK5/rAOGGcCj+Ihd5QjbvXZQ7yodkZ4bIRZOui
	 Nv+H/X56FNZgjv41wvwZkT7zzu++/OxRZyyaTcIZUn2k/bxYkZC6ETdcgpBtgoKHcg
	 pElxpPM/IV3Z+/h05O5k4KF92v4dfq8EthimjZrm3fRakh97fbjttn+Kg/e68PAKxf
	 QbDGimXwTjm+wFDD+HenAuS0g8C9zGxhFczjtKT9Npb1FJogDMrYOh1uTo2QQVx4cm
	 lvw8ffVPoy7IZH7w3zIysTh5AqSH9TeKZ2usy4Hokt+p/qLYd1f+kFUTTfJSFY7Cay
	 AhJ618Ortzylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3058EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895722866.5283.1612363423547181018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7aa873aa7e8e6a5494eec1848d4960a067104c88f51432c8edaf59c70f84f2e
Date: Mon, 10 Jul 2023 02:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688957228
