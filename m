Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4D82295DAB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747072794; cv=none; b=evaCKXg4MwuSf0w/m89+rYeAizKtzh8jkJgyNwwN3O6J7b/dLuynVZC1IWGrLs4O+yqvGYGVtke+O4ytMfvYYCeT3WwmFFfY3FxS0BYJePHCtf2a6ATd5/vC0V2u2qHsZwQa9dMuLfWj+mRzCGTZBfnDusbt8Ba5awn/8Y8fqMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747072794; c=relaxed/simple;
	bh=b7YecNz7DVxzmh4Nbes0gMtVLH2z30zZ2C2+r+sGhoM=;
	h=To:Subject:From:Message-Id:Date; b=RrzyabsupPlGL4a748HG1XmhKZebh2wByIiW2ikszAU6Zy+oCCHgh8XxS0EJJpUOUI2lzYLMLQgkNm/kqEXnGMtKo1CvQhHmaQUYIKku6BzSXdU5MhC8rXN2lZPBUtY03P2aiYi5I8rQxwrAxo3gKLw6c1YYkmfhJVWzhfytoHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9b+Z9L3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9b+Z9L3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8016C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747072793;
	bh=b7YecNz7DVxzmh4Nbes0gMtVLH2z30zZ2C2+r+sGhoM=;
	h=To:Subject:From:Date:From;
	b=q9b+Z9L3TtnUf0T3OdaaXmf8ylSIuKBIpwds7hoLrZ5wokCWpyGnaqQq/orhieTe6
	 QxRn6Ti2f9LXyQtKmnP7qlq4L0uT+jtS3sa1UNV0ZOs94bSMoLWn9CyAsRPzN4pxas
	 osqjpOM9EqNEt8fEEcGfyYGwjUf5dMVf4lcU8CPxDqyV7Guu0OknMGDty2iojEE0j0
	 StVLtuTEUFxtFzC7wkgpvdhKzEIULnPn5olkpBbg6WzgdkNAuq289FYqYarlL/r8eC
	 5PfVYxMgvxhLs4XR7QsEci1WnTaVnSUB54TLYkcf5Pm5pnf7bW5G9KEevQWkCt6dl6
	 mTnxAyfpUCTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964B6C3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707279359.25215.2662164749077783397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398af14eb0275733e5da019a061057ead2e81a5e7b619e51c67d27865e9e06e2
Date: Mon, 12 May 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747072793
