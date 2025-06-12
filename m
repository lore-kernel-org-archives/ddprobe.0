Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC9C2222CA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749712794; cv=none; b=RNMfcjSJuDyr9Wo87bTWi8luEcBQsqJ3d3sxypftsGXiFVKAMlo+G0TEjJUpScTSXW3Gkw0I1g6a7+rKCTYFRr581jhU59RqiCE4dj8F1kQ/22xa0epoW8rwt55xFwTSZXF09TteQYiXdvtSqymdwS3mF1oLWU5gGZSJYCTybo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749712794; c=relaxed/simple;
	bh=oT7+dTQKOUzh2IvxkA8R4lwMOu8F6aKcsBbFP0E+uGk=;
	h=To:Subject:From:Message-Id:Date; b=j8t9nBOUeGFBmRdc5rhUEFnsBy53bDDjToT1Ts/gPLzdbPZH1HNTUxUTZJ0ljSRyMuJq5P184S2EHXxHwDeuhwdviNBOubmlbMu/38iELgBS/5f3VQ8H8A41JE0AY7NzCOAQ1f9yoheXoM5g3Q6YxQ/dEoPezrQ5c/sAWEK8fz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhxKK5sF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhxKK5sF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E97C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749712793;
	bh=oT7+dTQKOUzh2IvxkA8R4lwMOu8F6aKcsBbFP0E+uGk=;
	h=To:Subject:From:Date:From;
	b=BhxKK5sFTeAvHlmRR+tOWGb8vZZeITbjLuqHLJV6HhaLJ5mMcf/rwOwLdWhbJ1JWV
	 Ay9yYQuP4wl9EX1cTHIQ3+nKk3jj1Hm0Y+QEbVJ7WvURlzVNnKyNDBKXQreSvRa02n
	 KcsNz+8uK1poFoeU6/+ALXRqT2kHCZ2HT64Z0CirraZvgkIaDkIUUv7Y8KGPYuS0lH
	 P1wnFAUEvpo5dhcckyvAVXWfeyF0TWmID7mrAjQt5pSnB9JhLHgOLjxndoBE6ZP16s
	 SglbdvHVwOreG242UgEXdUuZbULdMryRfs1rDS5+hDfu6Y9sDbmVhoeEhszOoUPzwC
	 t84BzW6V/El+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC3C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174971279360.27424.2387809962064923489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ece89284de045bbac9eabc12dd75dbf8a863b82ddb9833a859692e788877bf3
Date: Thu, 12 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749712793
