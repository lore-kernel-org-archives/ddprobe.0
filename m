Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD818197
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EDFC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669444254;
	bh=90WKunzaLFc2Fmah/Wur4LNMgKgTyiaZix+tdA+XLjA=;
	h=To:Subject:From:Date:From;
	b=X1ZQLlSMx1e/TmHdqiKDnqtUXPTSurXb0A3yXXnUH5ilChTes46PtRqkEijrSECmh
	 LW/phvQ6qmvts+PpdeoHjXHs+iZMNzyESqhYgoCZ/xiOM9UvqJQFY1X+n9/GSytOyG
	 Rwims4pLWr4NlKU17KGeTmrrFlsQrEjyTHfDrHcyZhW714DyHYZbQ0gliYzXJSmBbT
	 DvoxPy6qq43sjyqwU2Soz6zqLmoZwGh2sDU2vLQlJA3IixIUyG/dWftv4q6I8RvYj7
	 xE5XjzQ+eq6YiSLWM+tbfxo3pmhs0bbBzBvowKtT4p2OUU0TPevunI0N831QfLrnVQ
	 qR5BZ5/F7MDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F23C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166944425433.24184.9251739004508056590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8979000f6692d86a16d65e4126cc4c81eb8091f6c281a3106f1a96138f5935a1
Date: Sat, 26 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669444254
