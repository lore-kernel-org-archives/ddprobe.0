Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD69D6105
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A67AC433D6
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662747053;
	bh=sBRCnd0DozzXo+oHHScGdddw8wi6Sh6o5908VZlGmeo=;
	h=To:Subject:From:Date:From;
	b=gTZuTXE8xrwTvC6ozwxGpc39yMl2XQ2TkJ/M5BNciThtDX7Nhtg35Jpz61uQmCk6x
	 AAcrDPE8IlcNx5nrd77MggJacAqY52mR9MB9H9+AoqQWs0JGJyDtQmYxMG0ncNxsjW
	 Fl3dBgfMpXZYs8b0qn8BBRvbqGnMValOaQg6Mmd+BNaoR0nslSyYp8qwkIuf4qPXk4
	 b/9RnAl/hmDRhlaeJDisJcvU9hZ1+ZYhNYQCd+Q5658b/ipSPlEby3uv7wNKb4FlNI
	 kCVnmAu3Zvv93ga3UFei2wgnEKavwuy7QKTr4T9L5a/Ud3SYrhRHd09aXd77cUwhYU
	 Tsk+EbLzoor4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5386AECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166274705333.7359.5561782142010601948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8debb912e748dd44457717476bed9d239f749368d338b74a5866a7c8d429cd83
Date: Fri, 09 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662747053
