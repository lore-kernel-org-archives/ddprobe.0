Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446C61E25EA
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739127354; cv=none; b=WiDq6oa6sM5qGphTXBFfUv/h5U+N59+JKl6MDqPags5pZeRWXrBh+lPv9hbshdwg03VFJDFC1cYGJ1TqVu8beGYTI0MnwOnzi2xzFHjj3PFRKN4TatdCbFO8TMI9FYEdac0QW4V/SLgKhEdSvwD5HN89eQhEfDjdw6pjmxzNfHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739127354; c=relaxed/simple;
	bh=Z3baLz6RzSnlVrkFcwAA/6i42lWyrtFnXgxtWTCHSUg=;
	h=To:Subject:From:Message-Id:Date; b=JEtr9sJYQmsUDWPZAEqRwcJNRF+kHhxO16HHwdNYw/f76gOGBILvARqTGqZi3dxYlTE+X+RCJI8v53NWu7aEp1TZYs4pTwp4wD/lt+BAl8XPGKEyFhoYNi+zeP7hggVN3U/5Q4yan2ahKJnoaqH2K6xZ54WwoJyOGPgEduCrhA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRNjD4rZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRNjD4rZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 055D8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739127354;
	bh=Z3baLz6RzSnlVrkFcwAA/6i42lWyrtFnXgxtWTCHSUg=;
	h=To:Subject:From:Date:From;
	b=lRNjD4rZdJ6EkzrOMiwuLydzBL+Ixf0DeyYHhJxg8szFJQnwIYqa/U+nZsd/rCuUG
	 euKHDr8ZoMbwX/0y+072kMWVaXH+i6fvez4qLVQayHUW3Ezw6dVIfXgHrjkOp+6G2a
	 jszF7kRJvmPHqHnYDv7hyUCAyp0M9xjrO/92/Y8CHEW83JSIP7rXOyPKb1Wi9lIm4s
	 QL+PY2AC+MA5x/QrGhwkXtltXOfEtko4g2vGbvM7zETKj6NCYhyBahGWyBoF3d8iFV
	 GoLrE0HQCRMyUCNqCF/Z6r6TJ/3GnRLQXQuSMwrIP7dessGcjMkI7X2uiSxo4To+WM
	 LfRvqpv1MhPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0D4C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912735382.28991.7358813800957427696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb644bbacd8276f8f57b92017cf4fb949002cc8c26b77b7f12c0a658f06f6614
Date: Sun, 09 Feb 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739127353
