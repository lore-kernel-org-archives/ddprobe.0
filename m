Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ABC18E25
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757610595; cv=none; b=TQRAeLrp3U5qxZtzmFYtZmoB3pTXAWGZGabWuTfuni9UtYDyYVp7CGho4PXhBvtv/jfH+sIADgIan7f2Quz8aVN+NlZnPUkSRF7+QiwnEoxMICdXsViIopKmWSYPTlDVmVewG1oFYiA8kyUj7UWcN2zNJhUh1HsxlP9HHAItxes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757610595; c=relaxed/simple;
	bh=zhmoypRvtxo/f4VRO1NLffczsFawLlboYKHn/SkQsK4=;
	h=To:Subject:From:Message-Id:Date; b=E/yrh1glkCzxrLz+C9LYHxUkV2I1nxKOkpmfK4/6OhL1BxFJ40pZwMuY7tJK9XEzAg6y704ycXTb/LR8EP26Xa7vZt/taBMZsNrkdKur1f/YW/+S5BzOR70qBmFg889wunphEvVuzvvR27GSkSxBRyP/hxq1nxNcJrgv6bru3TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSmHwS3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSmHwS3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB32C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757610593;
	bh=zhmoypRvtxo/f4VRO1NLffczsFawLlboYKHn/SkQsK4=;
	h=To:Subject:From:Date:From;
	b=QSmHwS3QoQhRujqfj+guEGQc9sPPWVxJqPLBrmxVSn5xWX9R3tm/DpZUpNZdZeQw8
	 j3YXjP7Sgu1DG0kLRY2gY8EIEb/clto8rQ+Sbgs0ihjsl8X8n3ftSsQJH+toA7PXDg
	 kxxntAgO+l4eG9PlHcpuEO/lO0ZC1ov+BtmPKOUiZGPS0uvpWt/yh+Xp/N6DKOMaAg
	 sa9Feznx0O01r7Jt/+ZMYJoE5XaChADYw0+6nUpjak59HJFM6sqvuT7iRfSv5+sauH
	 A5bdwOlljgAP214HZohHg9Y+rYvYykpZT6hKatBvpwR9p4Mp6wJd9S9Xd2gYJpYLNQ
	 XmLeBKJRrB6Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D21FCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761059362.4960.16188436295374588958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6ff8228628227a8ab8ccbf0b4d902e3520ba7892e63214030c0281af578708
Date: Thu, 11 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757610593
