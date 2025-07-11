Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D9319AD8C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752232794; cv=none; b=pSRmyRHJh7irRDF4u6hcfNY4+fCHXn+g/8/+HvvOnb35UeIq9qsYLNcnangbYxmeN7unihRNXFLjWWGcHychLrhjjU3YpnRGysBifOEDIHBi6r0GdOjFv83rEqmoKi2rm/t5+pO8td2KQS5983foP8cUlyiOjegrq8yc5pSriEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752232794; c=relaxed/simple;
	bh=HCifTfJ/lQRUZmgoIlSLDopHBY7vjk7bT8iobJY8bew=;
	h=To:Subject:From:Message-Id:Date; b=CATe8uFsjkN+NOc6YMmPsrf28ZpSwoeGh4k+Tz/xvmVAhDxyzjdY5kqZ+PdXbdHxsEjXgVmHxGUBE4LB8U/yAbDLZ4cyug9fMeePnaqixghCwB14wqnEBPT84WQHBDV1l1TsTuis87nF6aV6EYea+WUtvMjAEI790Q+LBIg19Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBX+ixV9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBX+ixV9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3841C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752232793;
	bh=HCifTfJ/lQRUZmgoIlSLDopHBY7vjk7bT8iobJY8bew=;
	h=To:Subject:From:Date:From;
	b=OBX+ixV9APR/cv86WEbCiDzNf1VF9d2jf88njR55y9xkxm8JtFJNNGwfRsUwZlbM1
	 qKYE7h8Yy2t1oFbHEJ8Pw94adlG+6WdXqGDYMmrMd0HIZuPbfPW6Vslfr1aQ36PHnH
	 x+MNtJp1TEchLsKDWcE3HIC414BROdJdsq+dr4bsSAGXtsnWXS6UprKCwlUXwgBHAV
	 xsdK8+YeTFXZ9CNK+HkTo7g3PcwrflHcyLfjfDT1LGbD/cnv6tQeomq/VF04Y2k3RC
	 LAoU+ALIqyLtuoF8thtOmmMoVc+h8dOZ4At20hMzLijhf+/if1b9SXer3ZKQvQsT1+
	 4Ha9jxOi40YqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5BC8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175223279357.12387.14053253708955436307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e2351f843ad96037a05452d73d338706303c2bf49b60b9a93466661a23dce5
Date: Fri, 11 Jul 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752232793
