Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 329B83264FD
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776499054; cv=none; b=rZiysjGq+ef+4k+TzauxJokWylqX5KIDLMXHs894y/uz7nM89Eg/rhzmQLUhLnatcCox2+xMtyl+xe52Zh7VlODAt3e7YcuoAc6t4+bP8BgdFg52FXemOOJtxq6RvySinSkm58moO89p2Bw4oQ7Md2tbT+TSJUNffhAMbLfUv94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776499054; c=relaxed/simple;
	bh=SPWWVyBQ7k1hlENE3KsK/mG6tTV3R3afK6qHs2B2Ptk=;
	h=To:Subject:From:Message-Id:Date; b=avSC4y3Q2RO6Fgh/H9rnelzuuU5IC635flY1Kqd6lCChRcHaoKonYMWn1rmI+6Qh/qEDqiDR1DZzgMf9B1gLaEDDrZ+BHAlKbNcrGrpQ7qOhUUTXhyoUHRS1igWBg5U+1S5I+n+ANeNOlbCQNYOz/ISxLuhpMWdP12bTHeFXUFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1QJ6QRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1QJ6QRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D0EC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776499053;
	bh=SPWWVyBQ7k1hlENE3KsK/mG6tTV3R3afK6qHs2B2Ptk=;
	h=To:Subject:From:Date:From;
	b=p1QJ6QRfcaMO+PEIocirm/Vgk9R48AbPEEQSQGY5h8ic6gngX+GgyXfwNnAIB+ECk
	 +PoLtR2bT+y9KD+T4VGAlhTGe0REMGARguRODHFOYug2z6+LPl2bPHykVeW38RO72b
	 3/+yKhH63qnf23BpjF0n5HUE4c6ii2WWx1ymVS9wxhKzwEGZaDGTM5ad97Q6cF2kK4
	 ccXIimcY7vKTJ2Du5ldlO4WXDOF/1J5vvg3ZbhAcSTp2vnZGTHPdj/+/6JKjHgxq/D
	 so1W5Ap/3gSSnw4zoB8Jv4BfE/y2R4sZxHK6h4GVWkO+f0FBFf3KSC6WDvjDf+BpO+
	 jIMj1K+E8anog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C57F8DFFF
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177649905368.12947.13569549542216393555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fda60bb1bb7bb5d7a53cc480e6b57c2170ea06890cb168d9ff146d56a66d62
Date: Sat, 18 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776499053
