Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6771714A5
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739821734; cv=none; b=Li2Hxw5U7LRIbp3cBSBdBD21WMPX/rYQLhmHx9QEwKHtAmablmh5ogSQN+vLV/VTJlyZLbZ0Izjk5VQGvIe7XLV/27d14pXcBkXV1XN5lBt+zcgDSxrbrSCu+PkN4dF2YwNWp3s1DYIbSjHN6yIzhz28oE6blMTNwEK/1IulVLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739821734; c=relaxed/simple;
	bh=O2h19vS2wdk7erwOlOUvCEJvPq+cZqlRN8ppMRF+i04=;
	h=To:Subject:From:Message-Id:Date; b=psca9XL7/t1MnwHkHjIda824F96n1qzGeuipVL9ErkdtmaV3fWErYiPj8TTNzMcLRoif4ljMo2b2l0kLQTcL4tvtNV/qpRLry56XlwaQccZqBzSEW3roE5vR+hifl+7Nh1Q7nem5zv/wLI/wsLWt7W7fwqVWiL9zTSk0UDN0nGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6dlOB9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6dlOB9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AEEC4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739821733;
	bh=O2h19vS2wdk7erwOlOUvCEJvPq+cZqlRN8ppMRF+i04=;
	h=To:Subject:From:Date:From;
	b=q6dlOB9iEBO+3HpsPfNphZW4dDuRn6530ox48VEzzjXBuFEt2tQOJ+baMz59Z1NS8
	 8rmIJ/chYYxcbp7T4x1/wqkceCu9wI0Ru/qLpaKVh9k7qFW1cdNWghRpH4L9v/GWKB
	 cStiH3c3JtlgFzWybmX8i4zR7MEI2wTHdTgi8dMVx2x3YhpX4O4YxUCQEm185ZXw6J
	 ICTEQW34fLjjKprIg55tDaAiB25DFLxrAB+75Aweh3RJ+FKrdpUtBrveZjzxIvBbhs
	 LmH3HGOYqxkGQXO4mOCh98i9eIkf5cSvmUX5KDIwPN0JA/pVaF2QRtMmtZoeiVB4gk
	 boHim5kII8UQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94029C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 19:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982173359.11061.7681415566660111749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b59ee22de46238536934d3e759e809327ed70b38fb98402c4771c31293bb06
Date: Mon, 17 Feb 2025 19:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739821733
