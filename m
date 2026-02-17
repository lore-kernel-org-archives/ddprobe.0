Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238111D5CFB
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771300494; cv=none; b=U6EM8bUxudUR+d4plkGzuOQGnYlOnuxUwHMAiPfTnQQqCs4dHUYElql/7sHNjlYiZfJERv5C1AdhScBGe2LE8Nob2PK74O4UigHIgPzqxk1XUNvvRdOY3iS5fYiGYW3nezpRyABZw+Fgqlpqt5NFBsmfjEtuYs8jbdRTrWKxIFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771300494; c=relaxed/simple;
	bh=q9SgfFUujEGnwlZuLBh4U2EAQUXjThEUvlU/VGLhiAI=;
	h=To:Subject:From:Message-Id:Date; b=phdJ22IpUZEdnLrzLc0BK0fTNXeltW+HpONtx0I5POP8DJHwTDswNvtnr7SWLfxriHV6r9JfJKTaOflu3pqvHBotL3x9IwbvcfDo/h5PhBjWW2oyDfTzG4AibGHl+DsQy9NzrggGODeH0dmp/noUu7i4MKPYXrdqKtQRgIJM9G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgqGgRfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgqGgRfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBE6C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771300493;
	bh=q9SgfFUujEGnwlZuLBh4U2EAQUXjThEUvlU/VGLhiAI=;
	h=To:Subject:From:Date:From;
	b=YgqGgRfpWo1h3zartFnmpl+VrAFmczViV3oPpHq76uGRjNDiKD3Nonz9++ILnMpct
	 GE0NX/WGrUNs74dW/pO7JRCnlwhX/Rdz+7jq8DTRLSXoCsv8YYa/o6W+37Ce2KxojR
	 cFE5YOfCKtkxX8q0KEvCyKR0+lAjjy3JSaApPm7330oEfOW4K42bVoY9GOb6LJnDgp
	 xhfxF0YNX/xDicVjOa1JYmF2CFthjfJhZzb8hyt25VsOhLTNNy19GpcCy47GfKlUR7
	 sq23mr1yF5rwTi8vh80pt1GxH3Zh7rDpidUR8+MR66nP7jVsgQZOtzSUM3RXZZ1Y+H
	 d119wx2dfyKmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97601E8384C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130049358.5169.1559139866135968650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b822d5143097f99d94b733ee414e1a1fdcc78cf06c7f7434687859ceb027b733
Date: Tue, 17 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771300493
