Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE0E1ABEB9
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722632754; cv=none; b=WlwPxgtuB1SY7UyLq04slb28NXZipzCSrUoPLqx2VSrfBrJc/XY98v7YqXNgh2Ums2eDnukMUpS/rl/09uCjoLpwIUKh4kqa7h6mVCAZR6/GfKgwHDlGVtD3sWwgVyLg5wQd2GoZY1+gHRXCm5hg320n8IpDhQBQK/guHUB6E7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722632754; c=relaxed/simple;
	bh=TuxZj+DMMxJwG0qFr06tx5DE4mUKZtatINDerVW9RZM=;
	h=To:Subject:From:Message-Id:Date; b=cYVx3/KtOOPcQ9Ru4My7p0zelUX+sQW9Fdfs/cp4G5jHt/aeMGTnHscx3TBU0Bua2oTuCBq7OaVWG2fVC4KdfFh5PLwmHU6w0ik56cCX9+frLVN80AWHlWGauBJqMDtLCShA3j81D5TDLXGfPHeDfJJXp3wbEvFdxZajW46oVHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNxBI8Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNxBI8Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06F2C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722632753;
	bh=TuxZj+DMMxJwG0qFr06tx5DE4mUKZtatINDerVW9RZM=;
	h=To:Subject:From:Date:From;
	b=cNxBI8TpTcolNWwh78KTNeXyf7C3rrQfcsEsCkBgOO1yj5XHpl6Ynbx6VajXGkIFy
	 /i7yde8hEKLJuarodAlapCQMk79a8K/eGsb+B8RR5oIKHbiOd2W2hNOVvwLXDn9lO/
	 itbEJluuE++9A4qV6MGIGo1wn1FCGES2nj+a8qRbRw7+IT465/1ocq0UNdzCOGBpM5
	 /28Op5aR3uM33xUPASQKLkvmE0Db7r0S6NeFq4WCiQNW+9pg26CaWNEI4Fpa0HwB4y
	 fBQ8jroKqD4jim6eEYkQ/D46c0H4bBsZ08ylOmcNZbIPkns03YDIJyyQYk53XImdjt
	 xF4T9hFY6X9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1139C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263275365.31024.17948211809657290109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7993655f1d02993e92779e57835d7a3f53edb59831181dc42f0d486e5b07d420
Date: Fri, 02 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722632753
