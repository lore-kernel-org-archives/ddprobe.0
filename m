Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0044A47783
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705947497; cv=none; b=tTeP4sHNbUd77EnF+daLRq8Ga6kvFi72o9T7EjYnmYkU59t3yLtJscGJE0bQt8ccBkSlJLs4f+DyXhK6G9b8TPDagymEJFU/Co8Cby9QN3gZ3nxevDV6YW9MMDpWJw3V3gDIlwHr1x7+J4N9VY/aWW/K8IEo+o8VpkJV6ID+M/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705947497; c=relaxed/simple;
	bh=Kj7042+Pp8c8I5izUbBhkVqk4VM+yzub4Sn49wLLx5s=;
	h=To:Subject:From:Message-Id:Date; b=V6ViYGmgqUwRzx3aINlizI3fQEI/cj/P96Q5i56kX+CUMdJA6JeY7p8Fll65ZyVZXXe+jymDZWObiw9TCIckJXl3dao8j0RD4lmxMIrH3nutzdRBn7w2xCvDiX7sljYUuwD+tN+t5qwFn97XdEQyGyITS58r1AI8wn5/MA9yd9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwRWJUSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwRWJUSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EDEC43399
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705947496;
	bh=Kj7042+Pp8c8I5izUbBhkVqk4VM+yzub4Sn49wLLx5s=;
	h=To:Subject:From:Date:From;
	b=PwRWJUSNRsJIeZmvyQM9xgBFt+0oFqw/jrV0lRRFqKnK1KxcjDCdmGT1seLZ7NUvz
	 NN+YrUspskNypqm1edzmztGBWGoD4XvQzhJnsb9R7HB4LqgreQ2pch3jN2MHHxY4Yo
	 ZLWY4OvmL3v+3uCTAfKXJ5gVJKGUgopRxS9EaAClm78rA63X9VNtwtThVb7H7wr1DM
	 CUgzicTZQnGXs2/IDfjjlMXnCiJvUx2gdSNxhw5PaEIaoa1UP/nv9Tfi5TFI2KDNlA
	 rzq0YogrTgr5W9jvOSL5gLZGdqWyPoRVIvtMev0uScBRNEZ9/xrngLvizLZDRd3qg8
	 wi12GiYHtZ2Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B958C47DD3
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170594749636.9539.13970806190236382861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6615a534e4a95b6a6ed934460b1d708f159c70a63ba86804e09315381528f748
Date: Mon, 22 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705947496
