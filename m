Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE501A945
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744975193; cv=none; b=XzICU8cNcTzsMa+UNS/R5GIA9yUqjfr6HviHWoj3GmheQNfOfcjv60/lKGjzxkABKWi031sd8ez/xq+jYTszoHZ1X/AJ5TFn93e4YylWjz8FLJasEs/dODj7xE7ppn6dDvfwIyzQpUqr9U5rRTaclNjfrokU23LYPd4lXVuLEmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744975193; c=relaxed/simple;
	bh=CYwgv4YpOE6hQE6hvf12q/D/BbS6b0RZV8bn0rDCk6o=;
	h=To:Subject:From:Message-Id:Date; b=eH2Ah+K899AM3udlKNES0wbfyJlkm/Y1MME3OEqoiMEjVF2+pLtecqpetKWJR0hv9CtuA7/7Nx6kfULthMFCzrsS5ieuX/heVIIpJPejm+Jdkpl2iRpcMrTVP5XFU06Ye+4kdf11qFCtWDq7banBO+oqFNmvVD4DbLbvw1+mXxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUbYPDYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUbYPDYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB8EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744975193;
	bh=CYwgv4YpOE6hQE6hvf12q/D/BbS6b0RZV8bn0rDCk6o=;
	h=To:Subject:From:Date:From;
	b=kUbYPDYIHKNBEOLm8jjaVNZ4rhnYJFyFLmcaqTvuTmNkp+r1wlQsJhNkNsDScd6Fi
	 Xf99jvjRkb/6+6aU1KCfjDWpfK5RSiVGCB4SdQqn9diuvoRNMR3JGf3wp6gadS7S4p
	 cgjjcQkvNR4EFITPqyMJf//A7STN9kM9WE8qYK4usjn2359rsZuBViOggtBnF6+MZ4
	 5vtF/uXtdeygQx0H9Wql/gRtFvgsJX3mIQQbpLF2CrGzzeMXhtUdwcxhab/1+M3mel
	 Us8WLO7MWuJRzGtcdMzQFvCpmaw8eSXTmE/knjSibmqyle1wiR6btCgxArb9MM6gSb
	 7Ps8YtGT/7dvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444AC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497519358.5348.5342194290406196900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090dc34cf00a28c5eb2bbc31694b133879b354cf0961f8c3c93f58239dda27f8
Date: Fri, 18 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744975193
