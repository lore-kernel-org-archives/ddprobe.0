Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A2F3D65
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 22:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649283838;
	h=To:Subject:From:Message-Id:Date;
	bh=JscKaF5ql73vxDxYdW3fMneza9edRxmYty+rYmyzE8s=;
	b=GOkH4NGmN9VnQ70ZQURYzMBRbBaN3QRq+tuV9Kn2YyJblTgcibepIL0yqwojXcJ9
	J6zdz/agmcExOkuFxVRwT8fpxO+ID/Ur4Hnmwgo6QrsXfZIkrTshSLyZZrzLn5bG95C
	3ag4iTuEDADFubyx4w4/jcHcOATYfUtDjKonQ3Xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649283838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JscKaF5ql73vxDxYdW3fMneza9edRxmYty+rYmyzE8s=;
	b=fEpCJt/x2ZTkOHnru4IqBPjp1RjApw06wZoMyZ/rLGKSE+mziuDfKQCAUC4YJi53
	BPfoV4ftmlIPZSD5cAiqgeoFZ+yaEt2wAIksv22Ll/RuuIgcqHQ8aAESFnpPEk9OXL2
	wmrt3Iket07L4WaUobkNGVgQ6E680kPZuXAOfOro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018000fa3155-3ecc8743-c9dc-4def-b6ce-a58c3c6d0c23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30f123b7636366a5a744352a8cd301d4b0f5fa39b527d5323f62721baaf08205
Date: Wed, 6 Apr 2022 22:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649283838
