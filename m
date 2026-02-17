Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C7014D29B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771296894; cv=none; b=NgmGIP3Tx3XIWsm/cA9xr6TxQT/rOQDzmkKu7UMIAcu8OEJQcg+A3667Gqt4sAu4dTczxdYhTCOaR/AChHhdpeGwYHhMc+jp48UfCi3JENbK0aPezmOsmHZ5aTSM5FH0Mj9CBSL8bGiME4BtpKgokGZceWUoKBGzn7PVSYrXYDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771296894; c=relaxed/simple;
	bh=8RKsUPle0mzd4/tU0NlLOpTfEln7kp6mqXJNvXVv/5I=;
	h=To:Subject:From:Message-Id:Date; b=rHeWZlGf9bXechac1T4pUm13qnrqq7y3hBEJhsHvKWuO/ox/xa/E1gGklIZ71RLSDmyvxa4Dvbhc/w2gmi/h+arGN8g9mwogPfrX6d0O+AGeRdA089eJh1PRKFkAJtNJkr3AsNXn3uVhlGdvJlEJKXOiv+Dn2q1j+LF6a3QuKu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YophIJzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YophIJzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6EEC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771296893;
	bh=8RKsUPle0mzd4/tU0NlLOpTfEln7kp6mqXJNvXVv/5I=;
	h=To:Subject:From:Date:From;
	b=YophIJzndtOk4Xy/BZKtmSz8uEkoogOAts76MWJ5FSgPjCTKhi5WZb5v3Q9dLchRe
	 w6wOzHOxUXITVOvVsnUgJZFtVGeMhse6Gh5cFDzWiPFRJz8rkHJmIF1dtVIdxcRjHD
	 Y6BAfTcFAiQbEpvwsJ0E+c6qMBRp+LixhG2myPqRM++f65QJtwHmpzsCxp6E8k4BrP
	 JnFmaG/yW0JEw1AqgI8H4UWkSTSyaVwIMJU510V2Q65cR11FtWmULft2EfShx8NhEp
	 oBHS46FN/zyY7kK/3wafU3Xi6hMrX58fGuYcniOs+YhojJnDiwxHNbXj2/jnchO56M
	 8GXFEITvQJQvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DD9E83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129689358.25170.8911471033967227882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5ba91beeb24fb99e71e1eb83c9cdfe81e874545d9199b8d58dbe0bb7f3ef5d
Date: Tue, 17 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771296893
