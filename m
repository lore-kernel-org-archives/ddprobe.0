Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71AF375F8A
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774790693; cv=none; b=H6iJijnmz3zT6NodiizcmALpQUg3RkvkEaXAQ5T+7Rkzrg1GbxgB3Emebzl/MimAfTV0bUFDhjfbZsfhjqpRZCUf6Ze4jJFzEE/iorRYmd7eYWAqOW5ykvDNZ4pG5TQ4c/S5HOswsOJfITi0EbRDkBIkshy+NFqn9JnL9zfE7EM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774790693; c=relaxed/simple;
	bh=+rI1xWhhxbDnv4owhZ8UIMPajsREApqHZgxI0K4TzII=;
	h=To:Subject:From:Message-Id:Date; b=czikJIU75jeUnXx1eV6BIwl6thxB9ir5BkxY+lzp52qE3gmJidFf9PNlT3xpzs8bbOeT0o85n6XMsKxrq0DaRr+FsxNTn+LvVr4LU8HIwY59MnlnpZeKQOJK9Vl9HuxKoFw0zL1IFLElHamiDhpmS8uOKcR7oe6dLTlUUMPkbIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQ0rs31c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQ0rs31c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC5FC19423
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774790693;
	bh=+rI1xWhhxbDnv4owhZ8UIMPajsREApqHZgxI0K4TzII=;
	h=To:Subject:From:Date:From;
	b=qQ0rs31cM5kc6ZeMn5VtmkBmEq1CtCOxCjZDbJV6a8CbAvKbq40imv7G3hh4LEEIi
	 ENXmVb+LTagM9TqOLBkq2IXmF1VJjCm8WsXXKUE9q6vZm+yYKmjCAmFQ8ObM0aA8+/
	 wHsMiR+u1nkB+jC49Zhu2XV425MdZsiAncMAvm7gXEdxHtObxZ1Hwpo4SaMb/Xod9o
	 NU/ZB8nhYKNTuxeP0QI372tCPN9XPcUVgXkcP0g/vuYZtqCwQBmO8TY7t3i7y/MWBU
	 jilwj5A4F5o5pP9SuyTwKhMwVCVIZDT7KWW0IOgVlGiXngm7zTGYGOfY8bItO90vJT
	 zJXVSg2Foo11A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8E7F3D604
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177479069358.9165.3114064168633310422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d669c4753eb4748f6601dac615dcf55b3b997d8c37fe660b357927b6949ab035
Date: Sun, 29 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774790693
