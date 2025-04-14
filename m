Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB1725DCE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744621794; cv=none; b=fQZgUfd2ZMOMZcKUE9xPwB9SupGbeiaR+93otRPAMYdLNp3Riu4dKltG/Q4gm1vyhg5Zwo5acoI3MtptyLImxnZkW+So6pNrHexJhdnOfswmD9jtBP1r/x2GiinHuAdtlD2BzYW3eDjsSD4YUuRFh2Cc6p3Ooq6CFd3jQNbSl+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744621794; c=relaxed/simple;
	bh=RBxVQzTCJu1NU/t6le6Rl/aFPgf1eD8r0WZDMYW9oBE=;
	h=To:Subject:From:Message-Id:Date; b=p1gg0dfzShz/plPaNTkr5id/IDfMVW7INSLFFZFAFkAyFEfYhEvbx0zFy0DqqVbbNXHpL3wlsr1jIuPcgr8Idqkc2IOAtX1J3xNDgZGULMj3eMSF67wbiOqEc5p28g0mc8kXx55ikdqTbzLzstkUlN1PS8UfkoKPtx6mCQnCwkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9H/KYBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9H/KYBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4CC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744621793;
	bh=RBxVQzTCJu1NU/t6le6Rl/aFPgf1eD8r0WZDMYW9oBE=;
	h=To:Subject:From:Date:From;
	b=N9H/KYBO1Y/kC/w6mSbBKxasmdtZ2jKVVpRj9Zda4Tps+3142ZYDotPf5Mlo6Xaun
	 o0uxbbUUgy0kVXOKZg5/kZUJc1Ksl99lUrNj2m6Ow0k4uo7UbuOn8GAotmTwLNUhga
	 waTb3MFuYBMxV6ZZvYE7+LhU/OvYMSFPwyaNXUP7+ZA7JmckYhOBX5Jn6ZEmMs4A67
	 Jp0CN0riQ3kH6AwdDynFvGHF0+SRu1GyRHwuDBhnazyrEJ7lgWQZjJyxgaXZ/baPOx
	 AXpx2hu921+H7E/R/lrVbK919AylOjyEgiRWK4fmJOl73NgJ6c1K9W0wfAdf28E7cj
	 m5OzSyx8kFqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E94C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462179358.1218.15294778711260091743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4918b37cd4fa6503210eb992b362e1544899d8f3217bab78242aae73affb1eb
Date: Mon, 14 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744621793
