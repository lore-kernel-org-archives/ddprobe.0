Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0063F38237F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773248694; cv=none; b=F/QYBo+qEoyxv2xq0Ym+Bzib/tfLzDVKDry23g4Jhg9AGm8Fi8+iDpBkkCfQqEGkfMeb6rvzrX3j26tVQJ32hRZGIX8XF/PefZPu2MyCMLifLx0ZEBYINGhX3LSEifc2W43bI6hrO9Ghn0uI+Lh/c0nG9/weW2IxO8HueQkRnlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773248694; c=relaxed/simple;
	bh=4l8heIejpBykimKZbg7RKq7aTzPT7HbluanuUCWEYSs=;
	h=To:Subject:From:Message-Id:Date; b=B6WS93Xu98Y75JJxYIAmQcgXvY56H7zQF0+Xu7xRFBnust8h8PH7TEncj+N59YbDvkvJs4OHm3ZsJ+rnA/0dq7Inlc3S4N5itdmJET/nYYyMI5aF57UVDYWrB3MVSceXYz7klnYfXApJdf+KCvPpxEPuxximgU7jg4MltI0cmZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsrMxKGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsrMxKGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0CDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773248693;
	bh=4l8heIejpBykimKZbg7RKq7aTzPT7HbluanuUCWEYSs=;
	h=To:Subject:From:Date:From;
	b=LsrMxKGSEtnv4vmxU/D8aPxwqS5wnPB3FiiPGf97HBwtOyZWi9jEgWqzk5dcgpSU8
	 rLf8qgE2I4NuYUCD7+2j3w5ZQi6VPDmL+qS+31GrTaF1Jq+//jcgJCplPDqOxWa54B
	 IF/rA6gxACmxp978yuRtNhFVwIPuJdQDeJGoAhbl13loB0lrg+Udq8GpvPP7ndZiQj
	 1VwEnV8LeCWqrBKA9D1zzNuK0MHseJpPfL7J/5zYENU/zxFzlUwdoLuYhT/wZI2iCr
	 k/aWz2eQrw//uXVAbIEM0husNpeT/QXDthmNzlS3wSbl3WnLX5ZIhTYQ9eCJzbkwA0
	 WJC9khkKjvNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADA81125854
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324869362.6844.8988183105081900344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888a5350ef2758724abc0c61e41e38733800a524cfd2866ba0812ed678b02d22
Date: Wed, 11 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773248693
