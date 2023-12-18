Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEEB27FB
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD5b76jf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792CCC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702859296;
	bh=xRkZ/HsR/5xmoCdEqU1mf6O/BvHCpMG1Kr0Kp8gPrDA=;
	h=To:Subject:From:Date:From;
	b=QD5b76jfxs0z9XAOW6+8xOnOdMvr2q4mSwOyCQUwz3TJ56mouKKXHHQ+VN40BTU0G
	 aJbt11piPl5LnBrMmTwN4McGng2LUReni4gZGARQOUrpxdL77hykWGNhqdhF/jx9wd
	 ATrYnwNhhDTxxnUiy345coMiLjDyqOe0yTs0LVDTVgzdpi2fJefjfVfjAvCJT/5GuL
	 yKwK6SDr4PEUNoG7N4SdD0Uo1bAo5qS+5/2vSLQWyhHja/6uOPkZWCDHKyj2tMzWh3
	 0yI8pbbBnnLHBEB3sCydGc3UMrfHorcBMpgaezY+vb0WiqL2glAV336maQWDNZ9E7s
	 23P+EZJEI46/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FED1C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170285929636.11006.12803774506508132585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1f81f5eba393379f24c2d17c3ab2bad64b1d3a5f7f4acb7f241208746defb2
Date: Mon, 18 Dec 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702859296
