Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBEB23B83E0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779462754; cv=none; b=W4WCCd7br3T5Wt+527i0sof0/V8WTl2a9Bnq7HYxBxmLgXEfdcvlxcPbPHVA5RZH+GFXdUN09/ZeiSCFcAiPmifho+xZbx3+oLONadKgGyR8O/Lq8XfDEdQtAeCiIme++3k2xhr5gGZOAkMBJpBQAkMzWc/qxMaiMqcqxPwGidI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779462754; c=relaxed/simple;
	bh=uxGgQsgbH4c3Q2PCmt9qfwyVlZljJBMgzesh1OZbVA4=;
	h=To:Subject:From:Message-Id:Date; b=q7P6ioPu5zUZyaBaP4LX2u2HLaQqNoNzYy5q5h69j0lSgNiHfHFwrchl0V5+4K74U7mi9Lc5JWeDDHLpcy4Nc2v0CV9K80aNvtCGfcTI2dogfwDwCjKUU8WzxffDHyK37qN42Q6Ya5DkLN4c9t3I+Q/FYFgK5L32OGVgTvoHejg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhsxxNxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhsxxNxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1627C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779462753;
	bh=uxGgQsgbH4c3Q2PCmt9qfwyVlZljJBMgzesh1OZbVA4=;
	h=To:Subject:From:Date:From;
	b=qhsxxNxH7asu6Zmhwfuami5Ir1RqclBtiDxMrzFwDCyPTAxCFhMWrAhbEqQ4JdBMc
	 X0MUNt4CGCN9l3KW43iznBiR6exyjYMizMXwtqgfYkABBjQw/nAia3LKdzEscm+E6Q
	 Q6FBfdwmoAXPDlzChbi0N6Ha4rtE5EyY6vNg1P6pZuSM//uxpyG/wy16o1yZfjdPbv
	 iZW+zXdeyBJLmGsTRypO4xbm0GuYOPIPD6CHOgsZfpYcHkR04J9xusHTJZZEdiBrTq
	 smqZAI4Ib2Gh0mux3hD/dRvoU8g6X4QVXj6vuRdvrR1uxR1MRaDrHZW0oAYyPwBTH6
	 46tqwFS9l/qIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84ACCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 15:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946275368.19938.2955518167877339023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecfa5706fa517cc11174df95a7168af12715f97c954c580f04c4fb9ec748e44
Date: Fri, 22 May 2026 15:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779462753
