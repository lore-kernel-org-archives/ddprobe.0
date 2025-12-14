Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D341DDF3
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765714974; cv=none; b=nhlIUkKBqipBTU/W3QShL6nZEO56sqYTey0fE0ecUWHJkPgXWwWYJPkqqm3Ixej8JMDaOtJpXI6JdLlEW54h4JfO4wXvf+kKA9BVTiZYYMyTl89KdBQ029TWysQD9ZsS4ZMbAXNE4KPdkUvLhHJz6HlVNxdaWBKIbK3DlDzEScM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765714974; c=relaxed/simple;
	bh=PHhqM9gysyPt1VqZWG7bPDErw99HBIlyYj3ViBcJPUM=;
	h=To:Subject:From:Message-Id:Date; b=UozgI8Wdsyt+1FrDJHyuEELLY9iGxKZg7lY2LvOGF1UwN0HxH5PHqo7QlFM2G4KnTw7xsnAq7VuCKIcyHRSylXa8C3QLgnUH5TuaVQ1G3CsiqhuBa3lIDEI+Dl8x6BYBdDwYQQmt6kfe6q7b8K/fBbEZEChtS7QkfHd5DJcXYpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyww9xsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyww9xsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA8FC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765714973;
	bh=PHhqM9gysyPt1VqZWG7bPDErw99HBIlyYj3ViBcJPUM=;
	h=To:Subject:From:Date:From;
	b=fyww9xsw8x6OYW9eAVh8+nud2M7Y0V0zJkMyWDPT70HMSKc5wzy3DNQtBwOXun7Va
	 H0DPzvPnAQc6VzcQ45zvGLNQMjg0cAd397F1iGOpTHm4MXRnsuPy0xeC+KG88EaHrw
	 JgmeoyeL4A/CTnt2hDFnVr1pzZNaR+MLAn0imOEeIpWVfyraNvGRLiZT8ER7R5Q6qO
	 XVF2mosDHQL/WBQXab203bp7HaVYseENvVhLf9IMgUH/fq4V40e4luY8FuH8teAMMA
	 YgydzjIuDOCQ2yLie7w3cua61BQcqFoq4bC70R8gBjxF9+xZnRK8FGoszELX6oreu4
	 hUaHv1bqqSEVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1C6D5B16D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176571497358.27846.16750820286612985474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85695ceaeaca41e0e16a291ed892d912119a2600b4e9246355192a4df5bf9031
Date: Sun, 14 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765714973
