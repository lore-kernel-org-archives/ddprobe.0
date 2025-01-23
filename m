Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E8B1C1753
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737663954; cv=none; b=d9DIyTFI/d9FMxWNAB6f2uvo3PcRrCgzPZQAMyPR7AyDQYKZzdiDS9PjbxrQejf+Vn79zwEpzWIV5LcU1r/VcWZe4lLZz2vVVCA+A8C5cGhnb2tO546SypHvDrzyzwBzA8aYe+ZDWchfqnUzF0y23Ox66ziduHe7WrW3k/jluDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737663954; c=relaxed/simple;
	bh=pdbeIBFkLeVvosxoq8fm/NN/baJzdICcflf/kUNw0Bg=;
	h=To:Subject:From:Message-Id:Date; b=ag9XMzAcpOU2uMiMBg47b1NoCFvuMB0NbJKZ7t2Yu5MJ6JzbVVBbHI8ecv6ahZ4wnkA2AwG8XTr0CofsFRIt5UN8Cz/R1hTgrQd1D0jMxvJAhrITB3ARPHIwvmQX0Rc1rZNrt/iqJfySDgjtoYXWTqlNK0HkdxNkFAtdraBgLFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edjwqq0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edjwqq0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1611C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737663953;
	bh=pdbeIBFkLeVvosxoq8fm/NN/baJzdICcflf/kUNw0Bg=;
	h=To:Subject:From:Date:From;
	b=Edjwqq0mSrWtwt7JWRgWk6mRN0mpVcWP2AH6THP6TfuEHexSuljuu+rILXVM17CLF
	 xFWdbEEMGfRRqDu5ho2WBe4uCKuRnzQlqULDPKC7XsyIeR5APZY9DGQMYNL6hVTG8t
	 KnDMBZw/3yKd8Pu9C0ERN2zA0ZakiWr4l9kfplFJkodFE9WjTAX+GfBW/Mso1m02CS
	 rvT/p28EQLPHZMzQMMDeizp8+iANK9f71/p2/YMa0dOGYyhOmgcyALNUD3LCBlzbQw
	 G0kB8wSUD4NZijBaynSrDJgCdiCOf/5TDOlkYVXALUzxwDsed3LkLxAaKqakfQwcA6
	 51sQTbwZU2mxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929BCC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766395359.9548.7639305192994958347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e3b830ace05f53262b43de62c255f929cb155d73d471379a10c4805d13eb54
Date: Thu, 23 Jan 2025 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737663953
