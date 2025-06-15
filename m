Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3DB52E11C1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750022393; cv=none; b=eE2fhkuVPbwLpXZGtwoeSCwgUsStwpWTUgWZ3cqyhYa5Rict33EBzwLU2/vkFuV4si2iPrm5aK759vx+ohByjRMHuIBIXfArMBzPTQG+uh8oPYpq19oWUglNQTGVbMlQqM6RItfrfMDJczuo3L+Yzld1OsqvpDxSeX/Q+vQFRMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750022393; c=relaxed/simple;
	bh=Jlf2BAWOMDg1dZ0x4sSQJMvkTpUdcQz0Ha0x+Imr7d4=;
	h=To:Subject:From:Message-Id:Date; b=G/ZMMkq9gBX0Vvw8QlqQeAWDhQQ9XpV4oOtby2hncpttOIkfY5CCd1TCSheSrFd8X9OQfY2taGLf0FMbPM6GA1+YzKKs/7+q7flNfsCEpWfk7V7sasXRk7uQ2iHMR6lKgTlVw3RRSnPIiNPFawJyStExMPxuWBs49UaLB/W0mog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNq82EpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNq82EpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99C1C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750022393;
	bh=Jlf2BAWOMDg1dZ0x4sSQJMvkTpUdcQz0Ha0x+Imr7d4=;
	h=To:Subject:From:Date:From;
	b=RNq82EpPm31nyXnaLeyF96ma0/nnUhU2lsqNUmM6VfBnZb/fw4Vrm9ocBPkK6yZR6
	 8HLZqOltIz8FKOmMyDNYGF2OlbHEjqZm6crRmfhwwgMEiHcpg78EyB3GMUB+WK/i2G
	 1/rtpwNHiqX5eMywLYQR9BLcSLSuaB6b8jBEMieDQkIyrifHeeXCyHhyN69M2UH6f/
	 HqQGQlT9qBCgW4J0QjAk+sBE8zs0/DcQbxg/vmxr1gcjruJiAkcgTUOS4kusT/IvxK
	 vfxM8Yu6QnXWnz1X0hVI9nVZs2Ei7/wQnofA+JOcsW6H2J+j1lcNzD5IRJ9oXeYsf/
	 C5az+8YguAY9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C5C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002239359.16593.6237222880367084232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82f7c785816245ee0eda2f352de7219786793b6e4256312e93848122f508d64
Date: Sun, 15 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750022393
