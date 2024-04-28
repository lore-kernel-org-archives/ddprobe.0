Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DE733C8
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714332743; cv=none; b=r9JGa+n68mVbZfmla7eiBW+BdTr/470aL2m4ZjJHLXWyWWvGlnxz9NKrTXgY9rY5XacQAxo2Mvyxgd+NdP10DHKHCoz/sZ1EOnJUVZIN0Pi1SsJ1K26OUkzy2MMiVitEHyOHNbhV3+sXjaypYDJDiAH4zIFZUe4xYW3AqMAjiag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714332743; c=relaxed/simple;
	bh=yzBrTAf5EJ/2i63K3/2YUs47OazCx4SD/iVD0Bsgi/w=;
	h=To:Subject:From:Message-Id:Date; b=hQH6b0dBEdy+OsGCobcUxIdFOEYMEU7917OSllqPR4S+DjRXLXeM3VAJpYuXaLdkyB2F9KpQAJ7HqR7/e+zHVqpXOL9kWg7SYz/WJoLY1eoLDfpJabYVVT6APGlX0kq1QMvOMGSxw1WTz18WbP9c4d9rtJnYxmRVmYEg7xt7U1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGwxcXxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGwxcXxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF941C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714332742;
	bh=yzBrTAf5EJ/2i63K3/2YUs47OazCx4SD/iVD0Bsgi/w=;
	h=To:Subject:From:Date:From;
	b=KGwxcXxFW1M4NK+WkwChjkbM1Yi/1fpaRKr9139hVuKoZTZEWUpu8Sw4I2TAb1Uoq
	 Dym4PJiM+fyN8kG/1l0jgrfH9XzTeat3b+t0Ghd8mgCepWrXiilh6zrZdhyWaX27vF
	 wISFvTZrjpW9U8jhZ9erxbfK26j1XKXXC6Z9HSYphhvUmKIVp8cQmUDHWBpAAIwRuN
	 VYfX3a7w1VjqkzjHsnl0g803C7TengkGd8q7+Xnbsfx7ix1JTBqPqPuxetjZvzhTcd
	 661wZwKeJDvEWeMmAGwT9RCzCdqJFhtcO6rVOjxZ7NbBpCcYQDWoqG/+HzdlQI5Mvd
	 +6276sF9YJJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C93C4C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433274279.15082.6364216632146330139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4fb312567503c4ba9e8033298c63ea71e30976ca40ce180568c3059efc80f2
Date: Sun, 28 Apr 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714332742
