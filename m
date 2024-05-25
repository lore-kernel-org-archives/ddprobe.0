Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B4023769
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716643463; cv=none; b=Y7on+p0DjHFWniOBGIgTIIireE5meSlW57EZ5T3ZErq9WDeqwMUFPm2zVkyPh3fsuzWeTRUcrrGKhrR5j5YU6cCCt2xaYIVzaaA2Dfu/jor3ZF+jZdW+YTwLaS0ujSbVyPgxb7rp8RBiPvaOUCUwWwkirutYqXuNx5lnNuXQygs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716643463; c=relaxed/simple;
	bh=LPgp7cQou10bd+2O+8rPRhA6IIM8vVjEq9DiRF33xdg=;
	h=To:Subject:From:Message-Id:Date; b=Cx6n7CjtqKfZMjHbbCnO4fwJpl/UaGFIxm8chXao1r2GlSXb1GpK+k3gM0ZhylhGoJ+pwG0d7tHzrl0POdWPfJWN5m/qZppjqceWpZ5ZaYUdWEX7NIDOtei8jWTNIhNvxtZn+1FAmvOVgC01zc7mLIs4wXTB0kEo+s8o8FIym1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRtFSw5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRtFSw5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8982C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716643462;
	bh=LPgp7cQou10bd+2O+8rPRhA6IIM8vVjEq9DiRF33xdg=;
	h=To:Subject:From:Date:From;
	b=jRtFSw5VqI5bvmSY++GsDz2nri3OqJRIi+mUkHA/ATNpbdPYVVHqsDPxHmogRLjsX
	 n7NJDeZZlzT2hhkJRtAPEUoDSrcXl7gdeQ2OIfzi20vY8rjAFqy9nFbf4EkNQjgn1e
	 OOZZD+ISYtd1e1oqNpZGhqD3k9xif6S5DxrsdMF2xAz4OD75WwGIpvu8lCixIJBudw
	 7B3GBdxVOIUEdPfT/I8ATT4XcqOrlT/Z0f47HhvF8An7VCG83FTJ0yjyLoQOnNUVWB
	 udHOnUq4JaM9vJsVQJ5M7dFcLuGIJRxV8WpF3DI6mEdCUdEtYouRaORSKkrh3YyHJv
	 AJ1YJ+fI+RoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54E8C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 13:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171664346277.2828.18313009261930369594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b466928ab3a4f18d47d8219d7e5732c127e0eee0305b6ee13347ada25f28bff
Date: Sat, 25 May 2024 13:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716643462
