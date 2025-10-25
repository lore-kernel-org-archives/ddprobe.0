Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F85072612
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761368994; cv=none; b=MZajG1KRtGl3dPPXd7/CJGa4AqQBSPnTf0uMXGCUGdF1ghZ+8TZpNrYZyaf10KadIey2YSr+JXE0tx2Yml7+FGN+Rbj99+r+gv9D1I2LZ8dMALCCiniFFh+CgnSVv3PdQOa1sxfgm+uY8rwhw9nF/PS7fR95QhYRO58ZF/yqrxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761368994; c=relaxed/simple;
	bh=zlcR/uWFi7jguNIUhGG8XU9EyPce6Pu2XkNtr0JGiX8=;
	h=To:Subject:From:Message-Id:Date; b=HdQJs5j1f39xSaUFhzu5jnXf+73Yx2otE/vVNuHG5phSl+gmWJ21Ww/7v4Pn4e5jJUJTthZ4q06Emn2WyM6EqyB54JbrF0krB9aK+0bqX2pVLw3fTmv58bQr5p2Wswe8Ykvhh+xaGF0ffUwcp2nVamZSXxqTROvMv7QFs9VOdSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L25Q4dzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L25Q4dzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA224C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761368993;
	bh=zlcR/uWFi7jguNIUhGG8XU9EyPce6Pu2XkNtr0JGiX8=;
	h=To:Subject:From:Date:From;
	b=L25Q4dzvM896p5E7bVywhNeN9ZRkJW17xqE4wYlIuhOc1k3vwKes5vtCzyOQBxtaZ
	 pBf4/TJd2eZISW4hkHvtv6gzlibK/yRwiHfOwPOO5I+J8XODDWhmAIVzf2RbBQEDzi
	 8wod1/PTz6AZ4BpSWI6XnQu2vRLfQ7QBDFKD/uB2IfAaShwp3S4O9fw8j6ReXfmCoU
	 nsHIqKxLj4uVMvqzzGpkpiTghlICBFWV7U3TACSYoQwedb6yEWItfkX6k9PBQSjLJH
	 f7unlz4ELrhQs0pR77bYeVgTzSxkp2aoTAmPat7OsarrGXlUN9/Pox2P+3u8hORWL4
	 VNXUC+Xt64YcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EBCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136899358.20141.847584536518860418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4311f849f56150a5bb506976fcc9c66d81e21e9c35513025a11c652eb838ebda
Date: Sat, 25 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761368993
