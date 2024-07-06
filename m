Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CED28F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720233323; cv=none; b=T3ADLSV9iwoZEuRW6odAmhvxpSaBSVFOiBi13ml+x5cjxdQ0ldQsQ6pXqXBQQy5GUce28A3FK6Q/5W4h5ZoD3qtdyy2lLtcmxFO55lIH92qedZdZWS8jV7PFubps7ngQVGDaUaoUazP2d/NIKAj792kGfl42XmVcGhyJwdyLtVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720233323; c=relaxed/simple;
	bh=Cjp+FWPFm+sjJP+Q3Ovre/znuhnTl/HaqWd/7mC3fv0=;
	h=To:Subject:From:Message-Id:Date; b=nt204Nuy7o5OBlGqBtZ6nSvJuWFn3HWdUtwAWjYnXikPw0Og7BAGbKNr206kVQn5bClFt4O2YOrV5yMk9Up7Zwp9/n9Dlom7NUgEw8MFDOJBXyu5D4wxpOZLHL0VyrgBc/89t7ASYZnCpmev7jyBhGifNiy0t9Ji3JQxXa+VKB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0+g/AhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0+g/AhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8783C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720233322;
	bh=Cjp+FWPFm+sjJP+Q3Ovre/znuhnTl/HaqWd/7mC3fv0=;
	h=To:Subject:From:Date:From;
	b=b0+g/AhG1/UgdK6dLL72L9a5QkHC0qiZqHd9f5RLDL7LtNaIfhD81/ZRGcwC3M8Cn
	 /nL4fXvaMoT3zSk77oggWc9UVIWYzS1tFGhPnfGT+mfQaMvdXGVFtSq/c5hmm9Fh03
	 onZsXO1HWp25dKKMTlFrrVL1nqdF7g2ymo3YmorL0n+GtScMZeb85DyvuiiMXGS3ht
	 5WS/rUYN+FlRC4DOrO5yCbOE0RBjIKaBl8mgRkLODbvjTA6QW/yBTfoBIaMd2uVKlO
	 qUdKxOAPP8e58gZwc7QlLSn/10tkExrCyBqQW0KXTg+/lpBFn/lLxPHIabo/z8yio+
	 +6ykTukSj0O4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A27C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 02:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172023332277.6650.780583589463092213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480782627e6b20da6deb6eb160477322d846966a80ef72a64e207f4198c7d912
Date: Sat, 06 Jul 2024 02:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720233322
