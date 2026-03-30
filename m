Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040FA2AF1D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774854294; cv=none; b=GyVAnQvo6D2F/lfXBJcOakpsakBgp0JDs91xXCHMsimPREgj5mYj0EYWXwuehEtBXU2LPDUCZTNPbLRHqWqRwWKBjIqBQn+48NGQaM4GYXQkFvaqx4mBaXltajj0CPjr8sBQLeUlKSFdqWVYjq8thM8l/NH1foXXeX0B6TN9ThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774854294; c=relaxed/simple;
	bh=FbDBQxW/FcHNzWRybSRMBdAsoLH2VwGbLTuWpTAOD24=;
	h=To:Subject:From:Message-Id:Date; b=swnSm1tZP/XaGisW8qMdILt7yJOyyXSl+ZM4w1bPGuDK1wkb2g6/E2CUY1KZ2rV7t09iZHRrK44knzq9BxFfJC1sEbCNl/BozkTX7x01Qz7fC134xJgfFJl5hXlNJ1IAQN44cZeP6nvTQgXz/OzaoDfPeEvQeFsXOokyFnH0mj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogUs2JTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogUs2JTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ECFC19423
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774854293;
	bh=FbDBQxW/FcHNzWRybSRMBdAsoLH2VwGbLTuWpTAOD24=;
	h=To:Subject:From:Date:From;
	b=ogUs2JTHHv/iER/Avyn0ehq3QNEVIRBzc1MeT8W2aoAFjh8KuqTYWJMkNY1YD9kkv
	 u+UO2MzlRcG+QQ5QublmRoMGb8LL69/M1650ZIhIPa3DxjCw2TcHZLg+aqB8QPKFVA
	 VXP1w0YNgqhBYHdpVyBRNEghdwGgm4Ts2q44HRLe/b4sA8E9bw9HC+SrAB6/jBSBFA
	 HDxW+atgqyWkwX7rQhH0NJ00NxS/9Zskf1QBqGTiZEhtgyB+JlneTQXsXf4ubgZ1eh
	 aH4DCctiMav6rOROsIWlOavt9OzaA0S4WCp3xLwJarWoiiTVqiYXM1bjeZTMNivcX/
	 MGSvVS5eS4oGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9237EFF494B
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177485429358.30387.11570746825097186831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad7195b5414850e0cfb98e496b71d6e6eded997ba5ce2ed32bd51ffa7c906ab
Date: Mon, 30 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774854293
