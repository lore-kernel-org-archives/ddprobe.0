Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B46511CAD
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIz179LF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E83C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703861896;
	bh=gmN9dNfnNv+ZWwx1Ye3AsStChKhEQ+My6BJa7Fr0xg0=;
	h=To:Subject:From:Date:From;
	b=CIz179LFjU6NkihzE4QotWDEvSjCehD9yPwGzPHv0nfK+f5Y18xXrzjzHHNQumZAD
	 DvjzvYdQqZ0NaPl3faT2cDtvXgMm7CGuQERUccKXwojBJrUpNw/As5kCmPaPVG6eUG
	 aM1apLdxTZoQAP75Cso6OZI+8UM85sOkzrZpwBBhnSo7b7Va/dDiaoNKwLYfsS1yOQ
	 FOSPVmtYczgk99uXiAQJzwNNcCiaxZFYeo/RtBT/krdXIalh9XmDRbNFals/T7tZc3
	 ZYa+nmr34lLV/FI20XZWatjHnxfmcAfm7Z7/rAJbqk+HH7EzuAxI1PQ2G8cmXngouh
	 /ZfWD+YIJp+1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A89FC47073
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170386189640.21091.5874062518804341273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17915e98ec0df378ac3ce2bd2791c85982b987d6bedaf34ddb3fe39f80835bc
Date: Fri, 29 Dec 2023 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703861896
