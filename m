Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E61329ACD7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764278574; cv=none; b=j6S4/V8KR0+xp0v/1/xm7VZAkCMpUZC9eh4cbmrzfnqFbp8nlkL6sgZGWh8EJLFqo9gGmaAwVMB1bMoGyuZDTyzpDI/44YqkZNOmZ0s2fAZGYW4A7OhLVG+UbINOnqxZHUq02kWvWJfaR6Q2VnZ1pIuxQMpoUifIm3VUilGMeMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764278574; c=relaxed/simple;
	bh=G+xgUBbrEazRB6HseE0JTVh3Kf8BsDvdzsx6ElsXUWA=;
	h=To:Subject:From:Message-Id:Date; b=dpi5Z6JQDjpn+ZWkiLB0lqo1dsHVJv14p4mtM8hi2g7t7V3EPxD9STbZh0UnsC3pzDdE9SeHQ7PkpNhK69SSI51Q8jj7NrOQ8/UbikF7/2uCZr68q7bRZ9sEsgPGqLj7BTGtFzBrxZ2WMsB/5Td+LJ4Smhne1B+KSrQnHsqfBFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOHmfo2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOHmfo2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C44C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764278573;
	bh=G+xgUBbrEazRB6HseE0JTVh3Kf8BsDvdzsx6ElsXUWA=;
	h=To:Subject:From:Date:From;
	b=aOHmfo2pNeguYTz3OH00Nl/lHZUFTwOkdPT8H5w8tUWmZULcgAyo6yrcC943crHW4
	 FW5Vo7NMKSBej1pEregh6jnZNeEgDKKuGD8sFPUEq5X7uHjc0vI7y03kUYhsdTlWPF
	 4xUZGbEsfDK9BHpAHu4sIdb0/uBZoUeiaj6dl7g5rlsJl0NQ4R17o36VgiUpq5Ep8t
	 SScxbs0FV/NaGeEQZgm803JoWwaAmIRshoHW2iqQSjpV4MeKxgR1seOG1ntHOscEPC
	 3bGTLrRXu5WueZfKHgK8yaFjAE8kZOJJOuNIMr+1WpmgTdYjXQCR8sSVpkmOjdUQPR
	 Y9nPaRrzT9gHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E11CFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427857358.19714.2942602797160442771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ba3677957996b058dc29544ecd86dcc2a155c1dee2999855918410cd83fd3f
Date: Thu, 27 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764278573
