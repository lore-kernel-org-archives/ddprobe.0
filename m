Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F471FA5
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711772297; cv=none; b=ALHkj72Q4SIRnYOqQKMw4LcmbL6mquL0nyZBk/MxdeMgUmtPFcT7bbg8vl4MhUfzdrbnyX8po7KsnJRGwXcp1AqbeqWHLMi1zzccOSWwWQl6DwhGWTI/lBj7Rhk5LToUQhu0PEcUVNnXvIVxTUTwlprw1vj63SBaulVDtImMOTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711772297; c=relaxed/simple;
	bh=rPUPzbq0jrpLpNEOyD3wD/NFohirGgu8e4EgOeylDS0=;
	h=To:Subject:From:Message-Id:Date; b=ute/BNGKOktXezQTTmYXW0L8Ickw1MAFw2r/XLbpNf0yk/jdYd3lWAD5Xylf22MrpKHYFs7XF7qV4lMO7e8v8BFUeo6y2B5RVgBxcCh/L2v8c2Pp+zH+TZqmv9HBQbcVKilbykclOPyT7ZfPHUgG06n3XWFH7zT0BGosBSht3fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmN70fM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmN70fM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A25C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772296;
	bh=rPUPzbq0jrpLpNEOyD3wD/NFohirGgu8e4EgOeylDS0=;
	h=To:Subject:From:Date:From;
	b=fmN70fM7ycaqGjgEfxUg1iyBg2oUwsgyChTA4YUlKd+FI18f5FwXggZnxOi/VxvBQ
	 OdjDxbcbaAFyIA2o7K2Xa/1freBrsCIlP14eQVmh06SL4uEOpdugiLvGipTgj9aAw/
	 9FC9q1C/cnIwpRyybXLsrczBJsY44ko1AbtE7DCY7xN+RZINmW2/fYIPqZqd9+DqJ9
	 0VnC/s4CbOCa9oF1HZkDHbFqc/waai7ld8KdkOBWvR8rf9rIQ1wICoXyMdpAOBYIp6
	 quwJZLb6idUOpfCxfxJp5sraLNLyc6OMMTZiB1nXpAYiCC3AZy/7Eg0mhUviJBPg8e
	 +/womeCGvaEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66CF6C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171177229639.30597.17214538042907051471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a097e55b77378503824c34528df19aba01071dff34bf4fd40ae327adc601ab4b
Date: Sat, 30 Mar 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711772296
