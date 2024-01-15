Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7093D62
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGs3A0of"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C2A6C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705291096;
	bh=OWvREPMES/yVbeGNTSaHEuVYHVVSRVU3KV6McIkJ8uk=;
	h=To:Subject:From:Date:From;
	b=eGs3A0ofPH1cavQ9XtVh6UD+FOrPE2a+qzXcTwtN7osj6VHxlL1Rd6WSkISSM1eEw
	 7YxNSiORLBxIEML9+PoA8lhAIbyl81j4MXeqH+okBwYasEuh4gq//2ESNAifjFREd4
	 +5ypgBxU+RsIOJ3+bwZtAnrryFnhJnwLody3OBzuJHflY/1cHmx1vF+zZEurJ0Tt9L
	 rzZeFd2VRjpsVcQ3d/WzN40QqxzkiXhN/nFBrGfFLcKpJlUtU8m7kxyn9VLRO/Ao8A
	 GxkGzsY46OO9WKjZ/IQFwGoHyWlC7VmFj4fLCdTw0OdBt3cLQzSSFgC2M/nLfyGxZS
	 X8CqRLH3+CIag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED7FC47258
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170529109638.23800.13658601321998508638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee9bc1efc93bff54ebc8466c74182cb3c81be219e0b386994a89f1a56728a43
Date: Mon, 15 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705291096
