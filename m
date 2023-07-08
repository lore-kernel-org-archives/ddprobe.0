Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6161B8498
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB151C433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688840828;
	bh=Lloy8fzaTFeEDnK1NnshDsAL6vEUoY8Qp5mtHDPi5Gg=;
	h=To:Subject:From:Date:From;
	b=L3HTHwF3/au//yUiOET9lt3PEPpytxVGxucMzHLhIlcCEoTSyHvn+zZDxJtcPcp2b
	 SaMNaQ0G315wS/4KxbxRY8QiLEfOiqbYTM3o0L05tOD1JqTjd6IDVxTfTwuRIpUczV
	 hdijBUftC6THI3iQNWD3ob2Pc+YGnmcoKgHMZxEe2YK5qIu9m9JpW0ldnlr+wnoKRx
	 pBOQyw5+WWxuV2XAiECWDbM5NerahohojuhvGC9S1qM+IAbsSsYXBbXTNcYBexSLI9
	 81oNlCj55bGCZ9dIc0/c2f/Pjum2fT4Ega6lSD+GvrdnqbfeJOHNWN+k2BZDlmKILy
	 54DFa8x/wrX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB229EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 18:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168884082875.10992.9342957260279807285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed3382d2be163689fb812cd18db55d839e0a0c56f18b43d5b8493dc79bffe5b
Date: Sat, 08 Jul 2023 18:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688840828
