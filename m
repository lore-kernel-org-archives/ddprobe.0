Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333D8328B47
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761947394; cv=none; b=IqOGzVg2Pd7ZARdTtwhJw04zWbIlkgDhi16Xawe8EiPoqTTMzgEl8ZnVUm7VbGu1+cmggugFZcqaEbfUM66In8d8o/58IMEIpkZyRQgtdTtzkx7VZIxFfNx7gY7Wbf5Fi/yOud7qK4NGNm1TALDaNUCAqqNFuc8kEpKP/NbY22E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761947394; c=relaxed/simple;
	bh=H+slfaz05g7Uak96c1vj1UdTsC0jwMo8uGHn2XHIAUU=;
	h=To:Subject:From:Message-Id:Date; b=Yp8fuk1S2q3Tf3PQOhkfhG0xbdDy9MI4H60L92hdUjVD0VvnGNoIo8HCt+yaJTtIwkhY1R6TMrMwo7Wf1XnxRSqpLeLMWXTL3692oqsP9nR6NqFx5s7VAQM9bUZRlhP75CEGkMJJMe4y8AIXlhWAWWc13kqSyATZgNgC1f7HGg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3FQpb3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3FQpb3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CBDC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761947393;
	bh=H+slfaz05g7Uak96c1vj1UdTsC0jwMo8uGHn2XHIAUU=;
	h=To:Subject:From:Date:From;
	b=H3FQpb3hKDmt3rJyr6S6SEXSTXX2Txvo3dLOzBDfTc9R4fxE9qJJDalx/Bz7xSAAh
	 fQFlmIRBPazAgqHwUplP3kltoBsouFcFf61GO5jN50ORqqReBjP4p2fUFK+ZQ1mtdy
	 ZNu1QJ7DvmolrG/jWN3rrTQQPvsIxmdHQSHfVCFKGuvpynT1v/NiX7WTcqLinkLliM
	 V51o7C0/D5hKNoyFAnLMbEZriqWrGzzgG7dN9J1qq9c2j5WmJ1XQF0W/XDsStY6Zlq
	 yZQQHTl3MpEqB3zYf6qPG4YhCJSBi8iRVsKry6qgtnFUD24gQnd4NRnUm0rELnirxp
	 dAZcRkbJ8G6QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96485CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194739358.21950.3047529271595922423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0942a9b03c491629cffce46c0d17e158e6b7f0e0758cb9cdda6f2a64f7c711
Date: Fri, 31 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761947393
