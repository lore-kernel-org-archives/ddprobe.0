Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDEB72600
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748119794; cv=none; b=V+eOMsnVaup9+bcYWWOlONis2B3QO/7qxiSOi2mbEDclJvHul+p0nY7Px+MVhX50kY5DIOV/HkS/ZxtwjKxD3j1OZ3c/226Gfd5z0RkFvY/ABx2hahE73Bcdtxzz8yoo75XBuROYbGDLiWKqs9DFwVUtKf18yFH4gRj4NThEArs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748119794; c=relaxed/simple;
	bh=e0N6+10FJtZ5AhTcjUYEo+HLn+yJLV4ckvR/1IYu/V4=;
	h=To:Subject:From:Message-Id:Date; b=stuWKTXcfRHQNEVCim2Qs7HSuBeeGVQJbWWsrCJdRS6SZqOG0geXdOCLyayHlZnF/OxQZ6SitOnoVHq3kwerDwffcwqWNdNOw6Xa2Nx3bZUJJ1gTeRu7c4S+cirhEWw9F8xcOi2z98ObgNE0YBWNMzwsqRmizj0miqTO9C6MQpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV/S76Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV/S76Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5B2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748119793;
	bh=e0N6+10FJtZ5AhTcjUYEo+HLn+yJLV4ckvR/1IYu/V4=;
	h=To:Subject:From:Date:From;
	b=uV/S76OrAwXa7dplcaL05R6k7Sgy8fnRIufCN7Hu9yKQ0p8KhPPiTSTchvbodmRp/
	 GajflbdFG7FPbH0Y6q3Hon9Tjomhg+aeAbVmiGOqOyaI1gTtVWi4u2zY3/IxmNH7G6
	 OXlKy59vZhvQsKh3fB7xn8LKdY2bXaxdD6w3fu/ut5e/LprI1OYPQcyABz7hFCq9pX
	 0z2Nquy7JXOZuo0h012XBxPg+4b7gOAgMmcLnnRlOBS9l6BmoGPOJYNEkyFB4znhZT
	 Mat76nGUKHhyQtIeYSvuV28PT/1YixMO0SsE/LPKL9dF9FWDrhaW4vbz6WDRYOdzt4
	 lwXPerYGRAWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9648CC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811979358.30451.18272835372891742373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8af89b9dec707a24283d2a1fdeda60a60012d4ad69f5b0cedeaf8a2d9cc43c48
Date: Sat, 24 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748119793
