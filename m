Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2AAAD27
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738419354; cv=none; b=sUoA9mWlzSTvHp+QRoBfnTb37sfgZfkzRyt1s442nr8Bzn3aqyIZQjKWkMjP1801B7UuwF5fugg7F3FpKonSrxiXSVZvIpSxoLel+GC+oJ9IeRb+F6WDqD+yWvaYxN3bvDrOY7TxBUesikpLmplPvoIbUUtIRJAdzOybH/P3v4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738419354; c=relaxed/simple;
	bh=vIRPC4TmhSH5IRUkMV/Ch2FyWPcNMDIbiJeoL5I1H7I=;
	h=To:Subject:From:Message-Id:Date; b=ku0DD6lj4RNqQm0H1QxtsZI1Iqurx1fZpy49gCALhr3nu1tWLKyIeaatD6x5waOgLaxjfFM7A4D+++gq+84BHgqMPoz4Ad9tK+/51RMRF+8GyrPkxjrFvaKg9Vm2SBUAfTihpz3GF//8tgh/zUgBXZSaL9PsnLS2prYo8gp4c0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8AjkDQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8AjkDQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B238CC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738419353;
	bh=vIRPC4TmhSH5IRUkMV/Ch2FyWPcNMDIbiJeoL5I1H7I=;
	h=To:Subject:From:Date:From;
	b=j8AjkDQ0797KZiTnAdJJYEYUDU0+u+FHn5kBybNe+YUlNi9tcam6XWqSoqmoerDGe
	 d6FLEs52wiw1IRwWT/X/SvamGBLlGMdrEr6lJH4/4lA9p/WwzXbJcypx3D/ad8Iz2C
	 OZgJArxdqCBT5XEZehPTIoja9oFh1/PfBRhRc7chv1p8TSOPnJ+D+zU7FoUsSOtC0W
	 W4ols9eAuBSFmeyEseSmy5rVPrP1qLfEFQvf2LV6aB4PYQuhdnkJylEVDKX+baOWKg
	 Yxk27FdThrw+yCKAh55BGRPTmTRXuaYUMTukcxzm+I2V4fwJGiMPqlZO4jdLjmUcgY
	 Q+A6xo3gYzc1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15E1C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173841935365.8573.13737387458629085360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1caf179c6054d4e60e23853b66ca945f8a06f5fdc492ef9e91133e19c3e20c05
Date: Sat, 01 Feb 2025 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738419353
