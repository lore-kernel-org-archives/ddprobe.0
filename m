Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B506956756
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706309896; cv=none; b=m+5laZytfpk/2Zgv9QUhA9EB1FxdM9zf2DLc14rPMtbt36Mqosjp7I4WbJ2rfb2js6jinwXEbynq8kN56Gj+2hL5t9Y9uvRgF++JTBfUQQSjn6CTfpY5C9u3CtCvrK+Qg5Bo0ezKj5R6ET0QLfQa2yDEasaFRkIjZSuxRoZ9iy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706309896; c=relaxed/simple;
	bh=j4YTnzhBeuUuGewj8iLXO6wLLCUSSRCz7lj9gAjmjPk=;
	h=To:Subject:From:Message-Id:Date; b=lzQh8Fqgcc9BQ7H+Bx7fRf+FuhgXWrcc3KEv4E8+nx22oCcD3dP2iIJq++kJgaT+lwx2/+CNMoSsiGGNoJ2uRJ2thZsaq7F9ucdvNhtY5VPca0u+8zU3LAfYkB1CaK4E7G0t1A3CJt8ZI0lXgKsBgPPRBYrjTnsr2zxG246aF2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZ0aKotm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZ0aKotm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79353C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706309896;
	bh=j4YTnzhBeuUuGewj8iLXO6wLLCUSSRCz7lj9gAjmjPk=;
	h=To:Subject:From:Date:From;
	b=HZ0aKotmMzH204vJyk/ak8V1wUzG5x8XBPZxs4t/nRcDWMJ8z2Wo4jEbIC4zC1JuC
	 Ch6YzrGRL2Mv8qCqd1nZ2K//mUY+57cSiPUpJjIoFSoWC5bhxNWHUwS2jd53O6KnxC
	 vpdhNTWpYj1QLmkEP//tnBcKPZzDMDOc9wSk/uZfnHA7DF5gGF81cmn4rXFxCNzEDx
	 FBRghygRTCt6dy4Ak/ESMk411bMeELKIRxF94r60tQlV9ym1Yde0rOXsURJCYtsHpE
	 Tbr+pYus4+e2pt03tGhQRU8WSiv6Fkd8BjLftdgdZApeGSSKWhmUe+L4us3DwOlrhw
	 ztq4zBkYRZLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625CBC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170630989637.13781.13695966820472324105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb2bbf984724e7dd28d08de3a3577100ef42818912df99b9f62d1ee66aea476
Date: Fri, 26 Jan 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706309896
