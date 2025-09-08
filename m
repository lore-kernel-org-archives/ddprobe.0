Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFDF1DFE22
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757331594; cv=none; b=Q46MJzWDBNIHnIaz3q7L60sr1L2+YCJ+UkZKHYyR/JcKc9dMqLQdwiVcJTs/DcQJjEvgmqTwP4DEz03WlYn7KRW/ZsJbsZuCuujpnH8jyOH4IvX0bb5P1hwbgz+I+0TTw5a/juiQi4swP3R6aP1x+jnKLIw4GX/sNPlkdx5PWGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757331594; c=relaxed/simple;
	bh=+BM6PJS24ExKGLu19TstxuyjSV+IBsYA06H0/qvuBx0=;
	h=To:Subject:From:Message-Id:Date; b=guMik8HRTDqqCQ5574gPeJgp7P+J5LQqN+9wFQ+9BJNtb1taMyxV+9s2kkNMz0Q/5XxDb1Xln2wp1/XLL2He3SML/TCkG79M9AZ2CwQzpdI1U0OKN8vcnQuTTof9Jk54FhnyN2vrcuxZkUTldXwkFztd3g0RyiTczbpg1Zy1+EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfP9WKm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfP9WKm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F244C4CEF8
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757331593;
	bh=+BM6PJS24ExKGLu19TstxuyjSV+IBsYA06H0/qvuBx0=;
	h=To:Subject:From:Date:From;
	b=VfP9WKm/FIE7xWqHjZl8/bOBjznQZ5UlDSwfa7tBQmDgmvTHgDFcY58ZQeETHvoic
	 VzpAFFtvHR3MvE8CLvq+hDcmy0kftMNRV91wnFo0jEJrP5soml9OI9FMO07QV0hD8c
	 ShT6I3nqnMBu6bKaDRHiUEWvg4YevGbYbx8EE1fSE6Ph2IiS6dUXpNwcsaBU/9Uy9B
	 srYnpAhHqDa2wezTrA/Os955rMheCNFHaGtEuOtfXb9E/uXWgUBtRC6d1v2EFUwf/N
	 0Sb7aZJ3CaHJWUIcPCMdB0zC1d8WNFT+r+2hbCuHV6nZ3bf0R0MxZa+Phh0Ts+BkLr
	 8b9cvrWP2eEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E488CAC586
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733159357.28540.3656257798351919339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71046f10465cc84db0793c135e9a136db870903bfe07d2a0ad4fc7b59bdad17
Date: Mon, 08 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757331593
