Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F6B310784
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771577695; cv=none; b=H82UQmUltMzDpfWKV+b4wobxXM4OPpCRpQcyq6ZBnrpq1k4EgMrmFOcmVKB/ZfKKvH8PhKmp1QNxEP+Az7O3RVJ0k0IxBuXKyrtDYE48oeDcp0zu9DDndLOBkFbZKZVdtZN3yx9FWc7uhf8txMDqnZX0NknvA9rt6U8sk24pHoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771577695; c=relaxed/simple;
	bh=Eq4vsqg6ssMUBFSoZhQZTccJsRnrFDLesOg1NnGHOIU=;
	h=To:Subject:From:Message-Id:Date; b=k3W4ne44U8L5VqRdU2FJcU5rrPAcZdPjoNpVyUQJ1Jnb4cW3sZBYf1YGHTGd59iUvvJ3+svq+f8lv9vD2FHw3xR3zW5xRJpEsjpUcOQvmJLsgpVjSvvAi5RcLhStooUd/LCIZOtVHp/FM6k2k097luXJFx9afZ0qG4vbmvZiTj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHfBiC2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHfBiC2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B188BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771577694;
	bh=Eq4vsqg6ssMUBFSoZhQZTccJsRnrFDLesOg1NnGHOIU=;
	h=To:Subject:From:Date:From;
	b=aHfBiC2tFM4OkyHsx7uol3vYKHZjHm1p0gXTSnETIyTq3eDuKYLHEcm69jv1gDGDq
	 uycZoAjEPKDVuZs3HUPpqqfnYV2Lm6AWCviT1B7ymX2DL/OEOQFTN7LG0B6XYlkhn8
	 0pS9nP7Fzu29oBlJKbDEVFBDNigFu1rivnGQjFFFwstFlVMDRY1cy++SSzKKn25F9J
	 sIyeN7QtAhkaIuh71vJSyqH/zJ1R9R/0QDi3Q6pj31GoxagqBt3FhvMGpGaB2CCyA3
	 tJJK560fTYQvtca3o7fLHA2aaw/74h8Een2oE9F8LBDif18/E0I+pwKBid00nHtVPC
	 caizR2BZSPCEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A2AC53200
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157769359.16926.10277605685832199731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a327ebc064c34a51b2712a0027673ac5350a261850947da8eaca33499b4a1f5a
Date: Fri, 20 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771577693
