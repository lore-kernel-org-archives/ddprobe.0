Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAA5381AE7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777797454; cv=none; b=VUEKRhcmIK4wD4E9ZXvlkWWQ3Bn+J/wK+UPHkQOBA8hKNEQAfaAZoLmTj2u2fcZkQ7XM6OOkm1MbEWq266vE/sOrP6YZFE5WXGS81D8Sx2FqPSolUV49JJtUBxr5V0ONybxSZZhfBT//7HJezQmeDoeXD6wgu6e8J2ul/ZDvARI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777797454; c=relaxed/simple;
	bh=IYjI0yJH+y0m5CVyTYseERDNy4cZOw9NUcIlVXPjqv0=;
	h=To:Subject:From:Message-Id:Date; b=WcFRsC1wVHQnXjEqY7/3v2ZLyO4y8hwmXe3h6qUo9xe0eTA4TqzLlKrZl8TjdsPNeItjyHvT6eKk5jcY1+j++h8AvqeB42kfCMm0zVA9TJBqppP4d+7c0KOJK/61YTWybXPEXm7HxG0+q9TWffYvJ6uBGlgihgrH2q9fj+hFFII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGc8riok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGc8riok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99ADC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777797453;
	bh=IYjI0yJH+y0m5CVyTYseERDNy4cZOw9NUcIlVXPjqv0=;
	h=To:Subject:From:Date:From;
	b=ZGc8riokcBhpwdItX5C9xJ5Eb7RREie98a4EX8PTSq0vVhQiqTUGgH3U29yudtNiU
	 7b0roV4gZdCNlATyjS8pAN/BJ5VyOkCgZusAMjQYiTKHT7drCsoN/AmuwGzCEeeOmI
	 0NIrJCvv8QYqIlYmNj9uXeMFY1Kl1ER6F+ThzYf1o65iwD6ySuPVcSR85rjgvJKPs/
	 UKLI4jA7cUaA3Z6HOoMR190O4HYjOK5X5/DSsZCCJEvBnL4Yw+GfTUzyGVLqTNiKOO
	 jd2pSyG+4SPDzX1MbeLSKZz8vyxAufSNz1NGFPjldMRj1I3ZDBZ7qhU9/qVp95a/PI
	 lz0UB+sJex7dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EBDFF886F
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779745368.27063.13662467566887592749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1913ab6afee970f53fe2b8197b0ae3080073bad7109c3d9220ededa64200065
Date: Sun, 03 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777797453
