Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BB513FEE
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746275994; cv=none; b=K+LJWdOacronnmlvXyuGpLLOUJKmebAcivWffX00zWk1IC7pS4b7fHiDU+P8nsO/DhlUmnTnnOECxsAd8cNZ4SOG1mbkApkRzHO9mHFHI3jm7L0UYQiMYknuLDIlErOGZKRJUe9FhjmuQMWnkohirJ+Rz2tmURTrFyKm4j8Tok8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746275994; c=relaxed/simple;
	bh=VP03rLauCVeBnlqZs5U7d53N78ZUgc2tVv2vj8O26Bc=;
	h=To:Subject:From:Message-Id:Date; b=YSomUXu0Xi8kY2YINF0oq7HO81b4Hjf5v4owc5Wr60fGpG43wzuA7lVWEFyQDvoyca0VpHWEcKBOf9TsvtJBMFMsM8Jf1DyizFUl+dA7oojDiP82I8rn0ZjcKfjz7HPGG+63GBRsdG5c/qz9asnkXGaSqbznN7agtgByik9hYi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5yB/7s2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5yB/7s2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5465C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746275993;
	bh=VP03rLauCVeBnlqZs5U7d53N78ZUgc2tVv2vj8O26Bc=;
	h=To:Subject:From:Date:From;
	b=d5yB/7s24WoiGTHOcpnL5RrtfyYJcrK0BB+YNdTtoSf+itmliL3D7/pVV5UbAPc3r
	 61lwQ8clMM6aN1d4G+jScH2nuU0WV9a+GXiOEB+8U6atPQJk0e9kfpw6ZnMx1nLmwi
	 yt6eDazXwo5vBqxC2lzrOc0qjZG8Yn1Uq+WeGpzuM9WbbABx26GTRstTTJwG3QjvyG
	 HdYpLhEvAerHbRyDx2js6zDUC+uLmlZq9UU5lztPHQujDDqDKvoJsAsK2R1WQt9PRf
	 +HM+4hpFvNYEPckOslqkbA5ilWAl2s6kmEDsI+41tqtQQtvCWEMbmyI+nFoQXlaeOR
	 nWrrVPaMtDSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A80C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627599357.8167.16703303922414741310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90305529226ade35f9c85712e25d28f8c28e4d98be4211842bfcf66b1265b9bb
Date: Sat, 03 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746275993
