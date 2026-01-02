Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289F91A08BC
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767388434; cv=none; b=ctaFJ9Etx7U5GrJSW0lDABsuH8TlR2HojbrYvxNZb7D/0Y9JS4LHttM9RWUJg/tNyzF8nWY+lrunwoFCLptTkRZx+nVf2/L9I51Vb5avf8rBizV2CRkdvSOQWMY0PC4201Jzz5+72O3kQv3o+jGya5kmj21UlBWI96xekrXoWdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767388434; c=relaxed/simple;
	bh=iPJ7qg7HzqPIHhVQPUpDE+SZ9d7F/QY+3zLqSrj78T4=;
	h=To:Subject:From:Message-Id:Date; b=t8OxJm2+m5wAwt3y7JN4IFZxRm8fZA48figuQ7qbppZkGQX2KZflseEGWPgq5rX3EtMcenLsj6HqpLcmdGVL36AcXThL4F/4bOCR45JPbEowxhrTNanoZmVwI0afs//e8eMHA8lCEwDnGK7RqJOOd+LWr4gCnuI/b+p028HOTQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhpVV6UZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhpVV6UZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1117C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767388433;
	bh=iPJ7qg7HzqPIHhVQPUpDE+SZ9d7F/QY+3zLqSrj78T4=;
	h=To:Subject:From:Date:From;
	b=qhpVV6UZgqncul9OyWMAz9sDxuwtw/b8+4GISp+9i19f2EsLoGhvxPzNo0+DixOKC
	 P9wXEikYHO3eB6HiE+pQjaMYJ6GwMkFOKxwli09pWT8lOGeKFnX2bGfywRJxnFgG34
	 YdGFSwfN1wrMHLqR5pESUerZndFbZg38ZFP+H3XSDbbr5/KOk7BFhO9CWrzdcbzp6o
	 4woGZvT/MEa6ewFESMJuJIJdgqHOGJ9zG4/IaGPwtPS3HNn4fBVEsBWB6ip+0lPttf
	 7dN4t08Dbu0twvR8OoxgtNglncvjSiC48k/GofHBXHLC+BxmWRYB6eEiQmEkaYnOFe
	 81+6fH33djY7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90908FA3755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176738843358.3747.17034421803500424478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a33e492a2b95d38948999cf531238fd118d68f098dca39a191b73b1127e4e93
Date: Fri, 02 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767388433
