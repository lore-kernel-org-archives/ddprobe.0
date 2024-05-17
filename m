Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260FA12D1E9
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715964143; cv=none; b=tRQ6amW+U54vgODuWt4qjSvkdJyl6tQ2Qm3Ck+TQ9E/uw5Q1fPam3gZDrkZdOZSpc6vKr+Vqpsyy0CSLY8jOX33OvwWD5zaht9jqIhZWGol6YKH7hwS9qoU2rFZ3SljKKCL7yEjGHmvfDMefZt8dUYIpu0OuwaM6250CDIKyAQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715964143; c=relaxed/simple;
	bh=ocUwV7jIDyISOZxpDE5zhB3nZiHBgIoGa34bibCR4ZA=;
	h=To:Subject:From:Message-Id:Date; b=vFBS/3laLfdyrbJA/hKTrW9l7f3GdUx1W8UbVkDZhx75wp4baOha++XkW6PL1k77CQnzglj9hhcKVFP8GweDv4YxI1iXBf3Mu5L5G6z9C8aP41ARE69vigBeksnCrWmr0Y+oy0AeNhlLYEzq9EJUzEWEQ+UzGHIU7Fhat5EAupU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBDBpOIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBDBpOIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06788C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 16:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715964143;
	bh=ocUwV7jIDyISOZxpDE5zhB3nZiHBgIoGa34bibCR4ZA=;
	h=To:Subject:From:Date:From;
	b=GBDBpOIwlirvjVqAQeYAAyjhNj8oyBAVzMoBzXGDBmybfn0y411xgzVhCm5tgzPDI
	 23K9XgPvlCO4QUooD9gbY579fWPzNExwU5FnK+Wfc4JCvmNuj//GmDXOAyMRz4BlxS
	 DfTBDn+j2Yr++ahh6u7Ycj7SbK3gUW/h3dRVEMHNVKsZvP5w4Da6fwwB2vpgS2ttOU
	 dX3c9svJdkC1lu1kwD0RYo/pcnUJ3kSK7fxWuyh7nSw2Gn9HCyuEqpWkBiWZzSBlPW
	 mtD8OONXF4EiV3k+G8gM13RQXxYQP/sGwVR9yK5BkNK9ovtO1zW7w6CwXwoqR9NU1y
	 UjAtTQOeBUcPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2815C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171596414288.11664.587364105277044401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8a332f075ce508f1f8281d71bf151d05000734fbcda4e09c39b629645334fa
Date: Fri, 17 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715964142
