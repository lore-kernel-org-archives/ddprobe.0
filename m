Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2096E2D7DF8
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756457394; cv=none; b=aYEkZfrfnrOEaSXX8X3U3VF3a0IrtZPVTTb0DdCOauv+SSbG3KOsMeFvTWfhQbUvbqJ9LhHTnoRFf5231RG0ZIMMMs9n2ItOJxNiytl+Ijw5C3ek3QrOy62vaPls2jgOIxJtLtXOyTQOny+51Rk6RBVvyNpMo6KoZTStPU4f8rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756457394; c=relaxed/simple;
	bh=bKkuglbns7ZmjGoNpNz4fuZtPTkm/aH573KiuXL7+5s=;
	h=To:Subject:From:Message-Id:Date; b=CDl5pvEL2Ajvi5icjAJzY7fZSSR0wvEWFInlgyO+/yxIb/jDjWhUvWixD5TCjFdcvk5fk//jMXiHKrVc6CxcfhSV6QRc9ZQgj7JXo4vN/XtK6c5evzPQpmF0Xw4gVCis4aDuffOp1awfr+GdCYCgPHPGWaZ7HkpN0G27K9G+1Ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsFYKOZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsFYKOZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C97BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756457393;
	bh=bKkuglbns7ZmjGoNpNz4fuZtPTkm/aH573KiuXL7+5s=;
	h=To:Subject:From:Date:From;
	b=BsFYKOZveFhqQXGdjnWKuuxjIL0hj6fkeXbV+38t4RVHT9+1UfaGEl+icgKjC9jVc
	 6HrJT6bp8D216PyRteOjJN6dRSPjRzZ1PIwhbL2B+jkaeNmYfiOWagzRhlOcrxg+MW
	 kx4hjirKevSPsYzBpm2i/ZWj0diz5PVserO8KBtnd6LVYc6QkdUuxsmpUoYgS1Z8/s
	 sxxYKHQ66xdOXSV+Gco660IovjuNG4LIQzidkNolczZcklnNU2vH+qMKY9ckT3kdSG
	 vSwMeFtg61XHt/Udk4p5vg+MN27P4UhcudMu08QitfO0BD6ptg7LMh0sVdUYoCfaX2
	 +udT9IK9pLzXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BECA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645739357.5024.11450390446946298436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfdda3095ee25ac86766de4561af0ac76185a97f26f3efe19d7019d686acfd19
Date: Fri, 29 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756457393
