Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD7E5FB8B
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706983697; cv=none; b=nswzkzs/KcRbLb2NRS5AG6cuN4YFc1rdukIf4jqoQcsQrAlzf+mcNJIT3Ei7Ft3GRuTxBsWAiWKFu6n7QyO8IUJz0uTD7AHJ9boJiHKgLGEiuM7wFL7G3bF0bBDBwv/hU26YXDqqcxQs8apjjEVgujO0yiYHt2MOR8whpyV7Yk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706983697; c=relaxed/simple;
	bh=dPmLJnImzZiZEopPvE9Fh2BgddaQTc+ij1l/JluRSdA=;
	h=To:Subject:From:Message-Id:Date; b=nACvOGboF9MbFy69qqNmUV+HP/l2gbuKYXqudyZ+wr5G151NFwkg70KCkoUnn4GUzqKsh1Q2CV1s4hXHFIOp3UcJEQISgmJapjmgN4b8STpsVu8eSv6m0P5oWTd5Hs5yqvI+2xNVE3ZStbfDFCtPgDf6/mLnDVgztquPfc6HLFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fg9S7pa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fg9S7pa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81972C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706983696;
	bh=dPmLJnImzZiZEopPvE9Fh2BgddaQTc+ij1l/JluRSdA=;
	h=To:Subject:From:Date:From;
	b=Fg9S7pa7bsxd5r547iq++drZ4ngI3/YLmRRp1g2pli/JyZjI0jaukV6b09UqQ5ztr
	 Du2WSstyyUgLaT1AxED7KvLhqr6WyQvWODA28Z8vJM7HA1wMb440U9X7nGXzcJk4Ov
	 fZIt1Vg6nj8S4kghZRflfHk0qRknQv2upc7qZYUYVp024m/S+yzNojNeO2taFFiySp
	 L3f1FbCKrE4MHdmN+GqvUaHUI8GtlysHOnZBlWuqk1Zo+x5j8JXZGXGyn20wiIFoit
	 E/AhF996Pf1nI84FrZvHck1Oyl5gUagwZPCka9VwWIghu+KcfMSjAOiaGrYZxXeCZz
	 R8X7l90yJEkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C84C4828D
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170698369636.29114.11001608876239907428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6b39ee58b1a71c686369d74cc5d1c67a3eacf6e8b0d06a9374c9a20763eebb
Date: Sat, 03 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706983696
