Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A9A2EC553
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766000034; cv=none; b=pwkIBODy0qEsosb57x+XlShCFg+tboFBgvElrkuyuhGx+3f5jWiUQyHGTVKNRUOdDVvkzp45CU8++zGgokpEOU6cwf2HM/m1vjJa0mkieC1Av7KFHwxiGuQxq52Hv/v7osRGhH9SkrX1qEkr9mp+1VnSKXzxcpaBaR058fzdKTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766000034; c=relaxed/simple;
	bh=UTif+SavY4u95TQV6Qo0thrGoPLZuwhV7YJvRI9dVhg=;
	h=To:Subject:From:Message-Id:Date; b=t9taIP9/Hg0+ekaMmFYPOapYTHcwh3wmpkMkToXM+3fT7VTpwuREHzXIIINApbcMLgWnXb/lmAsxL9ixcFKbiw+dj+xrgmIpAJgELN2Cs9PtxWymf35M2izoyJy6T7LMAHeLxvPC+KD4YSujh/9HQOoSpGCp+Hna2QDyjnrRoUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2Gvt9Px; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2Gvt9Px"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A339DC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766000033;
	bh=UTif+SavY4u95TQV6Qo0thrGoPLZuwhV7YJvRI9dVhg=;
	h=To:Subject:From:Date:From;
	b=Z2Gvt9PxcmdPlzUUkgwHyy4OlOxy+4ypo46CgP+PaLqcdYXDTmVDzYXMoGqZ2b+33
	 7rF3YO/4Vbcn9wGqOCdq3hOOjA4kQiVt5w4+cIE3FStvW2M7CUEp+R3NZ218nxyMhz
	 miNqAY+yn1mPmR4w1KfCJLW5VeuIvNSxK+THavQ+TknQFrgq2gcSO37Fxg8ox5bIau
	 ugK+DKOz3pKArCxU8ydeLnpi1gDF1Zvm+kM7U5BHgxqqZzhrHYcYH8Kyoyst5RdD8I
	 rXTHUF47PmfCYELuJwDH32b2e2VjnR+CvMUOxQe8E5UhRafOCFkC0TaGt1KPXosYH6
	 /SfRc6NPzCcag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152ED66B85
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600003358.14309.6578478930482420351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218866735bb9d214695cc79832658ce82e5e1c2a330903d530cf011ebc00f736
Date: Wed, 17 Dec 2025 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766000033
