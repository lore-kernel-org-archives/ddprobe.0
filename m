Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1466F20DD75
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756306794; cv=none; b=j8dWXAaj8e6axli38MP1PbuVKipdyExLAH27BKT3H7g0r0nVQvUQcHX+dR9X/e8ypdBin+rpsFqGBqUVvFU+ucVzgYB3jEAA/dMZfSuF58j9WxsSDaGfLmFweZUGMB6HppvtKp/v1wSQYp67Wl8Xc9lxo0iNyK4t6pw5br0vbOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756306794; c=relaxed/simple;
	bh=pPbFr6rivSq/HKAENtaWfUh+cxczE8grqmJ++ygJmbE=;
	h=To:Subject:From:Message-Id:Date; b=FXNhRXUyBWJdP8O4ePvY5Qm2+NLU7e+oiGmtac1AH58SGZzJ3X5iefgR9slaWFVlmRcwKvW92t2zw/mPzv0Ee0OFXoAleXh2oTx7YRaTQmJdmjGZCW1EwUj7efideICIXy5ocEDT3silzzu6kYtafk3yVB6tGo6JaJlkcGmD1HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLW/vN3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLW/vN3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8FEC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756306793;
	bh=pPbFr6rivSq/HKAENtaWfUh+cxczE8grqmJ++ygJmbE=;
	h=To:Subject:From:Date:From;
	b=mLW/vN3GQsVaVuDtncLL11Q/w3Jgv7BsLn8YEFrFTwXPGmSmLNmwt6zDbprBn86UM
	 IO2ro3h0AVOgmVyZ44RXHcNP7ayFCNeq+7PTy2PgK7czfxL2Wj2F/Xlp3Q9sxGriHq
	 IRLKPL9xNYv5huGke8s/oqb/MSpn0FQxcdOPsDfKNeEQoVt/R19OiiLIUU7jjFzGPB
	 DC5iARzRV6dfoHbdgkD74jS7vxcnrwPYQ+OUdLBvhcbyVrVe98rHMjMQtNQggZI7gH
	 4O+Vb7ekbMij7CYeY7S+vIhIzx2mdFpW0VNt56N+A0VPoecBecCtzhipoOIDiXdRzE
	 RsF6rYC2hYkvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA15CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630679357.19652.4843657121090717892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6d0b97329f970f1531a20eac10cecaee8eddf62ae255908dc80bf5c2f0c158
Date: Wed, 27 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756306793
