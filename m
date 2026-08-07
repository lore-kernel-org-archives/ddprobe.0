Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8056346C851
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786110034; cv=none; b=tNZXTbQdEBuz+3vjGXha0PbpwW/nNUatfVMv1G+UlOo8SzwQZkVP2Y5grJB7Aj7ACQPAFC9L8y5ru9rTLGPj6wcvB/Pe743cXrDXvAAgY8Rs90ABibjW7IDjaV37ccK1Xo1NQmd6CaIKLdcqXfQA5rbo7Drxgdl+zady1H4anFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786110034; c=relaxed/simple;
	bh=mfC7khqJJwixcX+wEtICM5D9/WB1NSUnopTaiSS5YuU=;
	h=To:Subject:From:Message-Id:Date; b=WV4m2Jnfi5is55MZzfyL3kJD+k4MJQIRnHc3kNeQhpOcwL3rcl6o7vy0AyxLcRk568kX+Vpq6OijrK9Hz95e09hJR4iCc0cos6I934JNBpWh4s+0IYWy4t71iKVCPMH3LXDuf6IGsxgN5xSVJ9ljTSBy8dR7WYM4Dfyu/ajvVpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs5iMSlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs5iMSlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62D8C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786110033;
	bh=mfC7khqJJwixcX+wEtICM5D9/WB1NSUnopTaiSS5YuU=;
	h=To:Subject:From:Date:From;
	b=qs5iMSlj8ik2r0G8xuu7JQwNFngB6f1vK3Amv7tqYgH8eQl/vRdNJnwQcqBBQ/m1T
	 LKJdaq+pcRUgLiCkgNIdHrJIH/l3bmDXgIWIqmx9zpJ5tpK0YnGvSi5W7maINGIiZI
	 SafKF/oqNg1h2bYCgyUrNNMbRTxGiai3EuBQI97MJ3eR9ztaHw4GPgURVX1YYsh5oN
	 TqjVu6jXQFQFCeouK8slir5TQrm0Andk9nYTx8G7/7sxpYm9cFSDPzRSGtmNc9d7Ur
	 2zQ18XES9FeqCo/3F2CUn5jcffEc1GKU40YyI/bhaOv19QORvY/kv9ex1nf8dBnp36
	 M5PVjPZ32i4ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB22C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611003370.1598.8013655677688763576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ab637b64438527921a556f4e25bcbaed07469b3a8f09c514c9764c24ca6aa37
Date: Fri, 07 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786110033
