Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F71E86334
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772175894; cv=none; b=VA0geywP+cz3ORAdLkTY55gTMMV4BRVpg33yhlYQbuJlahsAp9xhx6ELf0SfJhbM3ZePWYAMce2di2ksLe3vYRteu4XCAA5Ug9k4IQLdq0wfqdbV+sqVk3+tX19oQsN/l1HaM2eXv6MvR0lhkQhM5XY5bcDHu5WkedX1SxANUws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772175894; c=relaxed/simple;
	bh=qZQQP+TeR2Y3dFEM/+BzYnUUNj14wM2XQtD+QNCW4Fs=;
	h=To:Subject:From:Message-Id:Date; b=hpsPULYggoJmN0wHCCx6R/OWGQ9V6NT6hBvGj8BCS07o1yYMWzcga4J36QHXmvyZ83Cr8Nad8p+Ss0PNtA9YusiHfZE526wbGjaWs9rWAuu6y2jflUYPNh+ym7EQmCZP/yPdsC8hjMGETgXTlQ0MaSPeQrYDZ2+sQIx/5Lfzpbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNU+9e2f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNU+9e2f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C6EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772175893;
	bh=qZQQP+TeR2Y3dFEM/+BzYnUUNj14wM2XQtD+QNCW4Fs=;
	h=To:Subject:From:Date:From;
	b=LNU+9e2fDnIO6u0ZZ05fHpACkFPcJIQF5ZA5MFTZMin10vg2gsHPQNZ/nuyWRLGTj
	 Q9fjfnnHsltN9jnUNshdGfG8QKQ5aQJIJmGWYDw20h0x1UDli8osLnAvg5K/ClySPc
	 kmM6zFakO/MJUXmLxLoG6D/hqIPMoyQ8Wl5NfpFHZNYIyJt6BsItOUsa5TZ0i12VMJ
	 tz9Iyj7O01fmYuEzcl2ol2Uo///xYYZDHKLRDfXTsYKgWVZDTeXK1RO30v/lyMG2Cb
	 gqcDniG6xPsZKG8JmzUCyMqPPUwUjMu3yFoRwb5u8+15D30hNlOJfkerKLSJjB/R9M
	 E0+Xa/vPcv13A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900ADFD5304
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217589358.13239.7747969981376384527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a93b24e122d82951b8ed34717644ab40881319477b6c0f939b2ffc8c26b6a1
Date: Fri, 27 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772175893
