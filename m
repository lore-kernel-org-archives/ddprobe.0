Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C008836
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754027994; cv=none; b=do2hWQb0HHOWV6nJkOtFPrJ2v7TgXSVriLwQgcoh/YNQIXyxo73eVIibFSqjyIAaN5x9Yr77ur5Ncm2F5aoXIIAjBh8IZIP+mH857wBWxSVPN3oskKnuasqB6J2uyst4cLm6lCS6lMEcYaoxdVGjf/0lYddF6fPTwEBVpDG1pqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754027994; c=relaxed/simple;
	bh=SxU7LkDYNb2rM6NZtI38p9+s8GXie1GFW7s2JY9/rVE=;
	h=To:Subject:From:Message-Id:Date; b=GrEULoleEGWRyBPBrUz6qhs4YI1ZG3mgZi6XQ/ZJkmmJh6H2my6yNHiErT484zFqW84qLmGCPfeZpNq3Yk3xyUbbsxtjTkXdl6AsvOfhuhUNuOuqY1mRBSkGK3kcPZUGNZvBXaynHLP+2UvGW3k+AA5lj/sbxdrJnmi+lBG5Rvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxjYFsJS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxjYFsJS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04B9C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754027993;
	bh=SxU7LkDYNb2rM6NZtI38p9+s8GXie1GFW7s2JY9/rVE=;
	h=To:Subject:From:Date:From;
	b=JxjYFsJSiigIOXpgSLtvLB4dUfeW8Vlms6xSd96vUdjHen5GpPwGOJOXBLavrKUII
	 gz4SQVVtXDkc2Ei9rRUYq+srW3ojPkkM9A1CdSMsMrjXG1+XVtCAKMjQ/MxZUZxxIL
	 eIoLjOLN9+06OE4CYweZ38wf0k93AgPj6YbFYtpR4HiIOxWMVPs59RjNi+fVWt2nU2
	 h+EvBkTEfqAJb+nfP1f+h7cXuuennI//2qz5VY8cVJOg5aNOs1hm1j8awEku7R8nUq
	 2uLwgTbW37AV+2lNn4XkqrQxJX0V3zzoPO3+I1ApJeDkQsaDmuNe7bJZ5MplDOnAwQ
	 uyWe0XAIeD56Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F474C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402799357.32723.18085982676219065495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1309e81271e957d63bb39ef0bc11926174281196606527c4d1d5817f5e38a462
Date: Fri, 01 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754027993
