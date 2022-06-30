Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B066D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656627412;
	h=To:Subject:From:Message-Id:Date;
	bh=3ZIk6/4NZqH32YE07ZNiJ/FxF1QPlJgk3yGKn8ZFZ1k=;
	b=Q6H9QLUqhzzmzrLJowI0IYOTvLpYM3esM9DZd9tCXk5TvvKlwsr773yXFbvlJePx
	edxcp2YjXDKLLPtxPqLd1E06cF+plhxWQUoubeFPZuVy4a8uS7h1KCk6L5Wx7Tl1pqK
	DBQ9Y/iR4wfkwKqSSMZnKcNKmOL4zpNEZxCjAgNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656627412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3ZIk6/4NZqH32YE07ZNiJ/FxF1QPlJgk3yGKn8ZFZ1k=;
	b=cZCGXDx0GnJqjSRrMQsvpkuYWDfZuNQP8ESxYT4cTC1UH5w7vXwdztrwiqhQdxF2
	xOA4f2Q2oW1Nx6BsGzR7+N8FaBQ7xiAdqK4jaJpCYcjB6wZCX788Mdm+W4KmnfYRvyV
	mXTy9DpK3ZYrLQdQHvSWRnbVTgOkyWhhQ8JJr76w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6b03d44-f3e8fc43-9fad-4b23-ad2f-df0f0b493c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54e656f55c3b1fb586af47259cb58167cb4d91cef6391e2514a956f36c166e31
Date: Thu, 30 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656627412
