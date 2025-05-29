Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2977714E2F2
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748517594; cv=none; b=T/vutQc0efAnbqvdyxW5XhWkM8rbC8jsB5Ym+uJw3/F+tf8DkD1BjU/qonB+dKzLI72W1HCioVk12Ah6+/BKdT6sZAjN/BJ/DRHgw9EbRt471U6Oe5y8AZa/rfqS7ID3tv/0bt05kDk6bska8ZuqmUjiVkTEhz3lSbJHQFFfQq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748517594; c=relaxed/simple;
	bh=PwUNDE9mfAHv503MgSS2haOYeqT43wuc9GveWaUl/Wg=;
	h=To:Subject:From:Message-Id:Date; b=ZvJmr84XzqVvXZyt8gAoQ2ksauYi25AKP38sNNCDJvwU1rjWNH5km9pNPqCnhLhwHnTLgsRWP4GKXJk+p3jtrfWqVDZLoXZuHzyKA0LGE1k3k1lM0TBWMIuD8P3yvcCyob/4W+gYqGXAZDCLzGFjhvxkCNCHsn84q0BnwHjYKQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTVww9QB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTVww9QB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF27C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748517593;
	bh=PwUNDE9mfAHv503MgSS2haOYeqT43wuc9GveWaUl/Wg=;
	h=To:Subject:From:Date:From;
	b=XTVww9QBWSRv7HJBLAHLXDKpXni61p6vdezFgnhijzCWWJ1p45QjGW5lDuo/YJj74
	 IsJQRGZ0Ns0X1wrnNZa24QVPTYJ3hUcRJsXta40RjVUMHuUr4kcglGYdVX9LMkdi7s
	 c1xMD9xK/2v6mrTQ5EFqoBKZE6fnDsyUNlKKPCXE8+ObzRj+tDWLRzkjIGA7HOfizc
	 UeDk676Fp1XBeSEQk03Qm4R6DWqCexAWqg5wFVEk383D98ZZI9o3jLmB/3VzveDQma
	 YKMJmqGByF9DwT2YHkGp1qGQCv+gvHsWjsAl6SejTjOfl3OhuM5FG/G5e5os5eAt+Y
	 xAVheW7Wp2yHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B7C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851759357.23930.15922517550133377411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 231a45c6118885709c650d21dbb6ae523d81b5fa61183788bb3eab2c0d48287f
Date: Thu, 29 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748517593
