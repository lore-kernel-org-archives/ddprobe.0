Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A842E62B
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734132354; cv=none; b=e0jeJkOFrHW2znMx/uRHr8VBVC+3GErt1nj1qdnH+i5lAupB8JIPpL/Zr+ZAhVr1HDSCHnZSuP1WUcZpnObS4obBCCh5tgTAub5kNaHBtpIEbbByo1THpA3InYDEqHovvjDF9UM9jkjWF+he7MFCz6KAZkOH8NFRVhwCAQ/EGek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734132354; c=relaxed/simple;
	bh=920w+MJdgdcUOx/f0V7ljgN+0ibgfsQjhnKlzALGJ9A=;
	h=To:Subject:From:Message-Id:Date; b=WfXd0/+nerC+qqB0lL7RpDlhXtlJcCORKSM7pzsL7hkD/RLrqCWyr1lKV8OKCQYa/51H2jXEZ2p/2S8BFxr+5DzNGDWqBXpWeG8QzY0JGCQdCtfUGY3yp7KopBBZT9rq5WiH767hm2dxWgEdDlnlTNzQHKs/PKITLLvNQu4keqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hxyy4xvT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hxyy4xvT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9C0C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734132353;
	bh=920w+MJdgdcUOx/f0V7ljgN+0ibgfsQjhnKlzALGJ9A=;
	h=To:Subject:From:Date:From;
	b=Hxyy4xvTWQ8NzUGKoLGPvI/po5ugUi6U+Hx0fCS2zh8RkaSW8CxLFx/7zQKNjTFYK
	 xAEdQMChWY5hsEK/OQ9VgGokjLJNIfMRQJv3bzGkLiy2hI/llBnAe0uXpD/4GBJf32
	 o1vpTg/f72nUnONi2K40zLVoG4nj+XrI63b0HhQ9jRRQxAE8YO4/SNlZ88cMWp5+wf
	 /QabrsuvJPlGl5Wr4zL/u7sUjlHpsGSekXup++YdixtlDs67eUnGnHNB9SSGqgZbe2
	 cPiTq3htcfXdNMXrTBLWWn7GTnd1FCtC0rtGt2wXRcJGmD//aMs5oHeRNs8H5wXsth
	 uG/mHrT5U+x7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B82E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173413235360.6500.6907359088016117056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776c60039959cd914aba861bd196121f4d9930b84045ccdf54daf2410cb77301
Date: Fri, 13 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734132353
