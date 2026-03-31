Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D7739021F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774986894; cv=none; b=bMo0TMQmIa65IUu0vIsKrYm2hnXJDXj+gO1Xb/HCJjZhN4w/XF7SMYDKCGtJssxXEVHWL96nEuJWNEiNyTVYPxm4Ijk58U1JszNJIPhv8BNzoaU0t0jy/h1btJd+7CL+aTxDS+zgu0deys0EakNsxXYyiR9vm74pTerddCrHejQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774986894; c=relaxed/simple;
	bh=IWF8Gj0fA1hNkH67bFKR5Eb/2Xt//wVVgRHoB7jSIW4=;
	h=To:Subject:From:Message-Id:Date; b=tMQTcGIaVS8f+/33bSMMNM9wFidaurO/y4ENCR+ZZW44MXV0pshStDHduc4aDoc+GEi1azmcVPRQpkthh0Zw3B/ZdxBfvAN6EPBV2iKWtoKgcuJ2wExhISigLXR1PiXUdLf7PKnGdoZ20trRwvOf11SV3uQRNMqvrKjJWJl48oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlcFC8BY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlcFC8BY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9910C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774986893;
	bh=IWF8Gj0fA1hNkH67bFKR5Eb/2Xt//wVVgRHoB7jSIW4=;
	h=To:Subject:From:Date:From;
	b=SlcFC8BYdbf56fLFbL2ELQBxUhWdHYLtn5Esqs46Of74kvgX0LO3JacSWb32J8Ud8
	 QtjVqFU9Orw1xC4fkKvp8yEXGlLSuvSnqxGryHBO1eK0XxOMeFk7LrAq0r1dLAx/1z
	 afI9XDfzC2L++f9GFJRWHy5BhbQgtcLWIQdGze/EKENbZ/w41Fvy1xrrPEStQSuDil
	 mJty3TAqGgGjgH8pRVShbMSPNiBhdSomZ8mmQMC+qlntIEbVd7+JeLtW30kqTsikHG
	 hBC/7q1t7Ep3g/aQFwN1/hAQkxscU8SyqkbEaHo8Gw+uwJFLJAvsV9l8UpcDsiKFg3
	 w8L+AFd8TW8uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D66FF60D5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498689359.19498.8055994310495638902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6616579a47ae04e3403ca92446e573d3eb8dacc682c05b344c8e3393374f76eb
Date: Tue, 31 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774986893
