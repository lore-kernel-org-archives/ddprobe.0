Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442A7218ACC
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759592995; cv=none; b=FLtdhwP4zQJZveOmi0M4fw7OXlgA42/+R4I8Vu6dsCfk0dIeKA86yFBvNlt0fcwB6t0ihukuhJkLf+3UPzpdkkjRo7e1LEb4MqUeqrRHr18lK0/YfUa4Ulv+lwcubtc64VzJKIvI00+vbsC2W9WCJi6WYb0Am2jJJeg43nvS7os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759592995; c=relaxed/simple;
	bh=7E+D18iAvUHPCazJ5sBth7uSEn0WijSX5DJOqxRwx3A=;
	h=To:Subject:From:Message-Id:Date; b=o1EqeKeLS8sg562oIC13fHXHPgWgZWA7WaKpxWZdGAHuc7MUggzaBpIsawhSKlfT82KsKxuyIFDRBg/eKQhcJc+MmyfmZVqsAWFa2ORap6m6Dh8hyrR5Tica5sI/X5UGsTWxCdqVBr52iXyPr9tZ+kOVdzSy7Tl2rUlBYMPGizc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Un1mEXXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Un1mEXXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9075C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759592993;
	bh=7E+D18iAvUHPCazJ5sBth7uSEn0WijSX5DJOqxRwx3A=;
	h=To:Subject:From:Date:From;
	b=Un1mEXXMIHSFExdN+yye0SXqHLIXN0Hoov0/F1i4DOLwqLp53iIL0zD/CCqXhiCXx
	 jm0aKrWGN1RS9v5fWmrhH5ZHPdnv8Bb2DWgDFQ4BRVI9RAaGGEw5xl90HSCa3glo73
	 6yVSmjN7clTRs0q6JjxtSsOzFjM6L65t5zMRq9uE3io42XmgF/o0d3Vn2ref+PI/8m
	 90zGdr+fJGJ517XsEkEb0HUsVqdBZLky/nt6ySyEeSS8N3m50kGDc8NsL17hAX4qe5
	 TcFL5uCnHC+GQNvHWb3f07qBKGardbLa2u9NqIJlOv0Rnh1dVMUYjXburx+UAkOr7c
	 xzuKIQqUjmajg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B74CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175959299357.3901.5676181479425963988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e302d21ba967ffcaf0a0eb1d7304a65f614760d44f2abc7d405135716777c116
Date: Sat, 04 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759592993
