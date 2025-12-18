Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1637026FD93
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766069634; cv=none; b=oLCdiYN23JpGM4FZRMoz8wAxoq7wRZRR/WEgBttYewGifOTt4KoMXc2NZxFa+7L3eHwbn7yKK5Q5VaOaJyxZ+QMy8g/3BWd1/mUZB+psq/8vXkWkgGW5iQpPFeS8/96UfZzXtXsyrFE4TYFVMf2mVQkXvUqHqzP6kEN7ISypxNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766069634; c=relaxed/simple;
	bh=Gjbx8dwGFgxH/cXNzJ64c7jFjl2Y1wUFFrNveo3g1Fs=;
	h=To:Subject:From:Message-Id:Date; b=kHOhRsyUOP53UMhBGsXbclTA/H2unKd8k9LKM0tdATkdWL/v2yiqXLrUuhnDKIc8dgTCxsjmCWJqyUGGjp8vtPLFqnys+4i4RSJQO1Vs75rsPFRjarSiyGSS2jzo2anezWsuKNmi7e++i8h6ktEWDZhUATOVOlocHKEoxf3Om/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I62pRu+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I62pRu+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08D6C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766069633;
	bh=Gjbx8dwGFgxH/cXNzJ64c7jFjl2Y1wUFFrNveo3g1Fs=;
	h=To:Subject:From:Date:From;
	b=I62pRu+CjpRrj6dThfY1xQEIpziKR7UMSPe2M80CWZdBzLlHDtIyhw2aBNq0Iu+So
	 qv7XvyoPqejqEiZcE2RDxIpqK/hy0uAsjAE05mlupLU0/1dRIPbh8ERs+EmAM0vlMl
	 6jT863uL+6loy8MSMSYrZMULVz6aX5DxwZlm2jYlIfifi4rg5EwQ08GDi/F9bLlJlE
	 +J/1o1ZPOO0XVU7TCp6xyQBCwtHHhriHivbe0b3kOpQY7MN9wfC7hVqkTpHk6j8gtF
	 QzBNITDuyjHHkHG82D/yGm/s1kOkieKTbpfjJQ4QuLbBinZ1hxrpRV9ixadofgXQhd
	 JwbPw6Fu5gX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CBD6D22A
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606963358.28110.12894640937895464988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ef67efed16e4fb6bba9f380113bc038dd2d50b4d1482606047618bdfcb8249
Date: Thu, 18 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766069633
