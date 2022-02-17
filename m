Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C882291C
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645101084;
	h=To:Subject:From:Message-Id:Date;
	bh=YqVy8zfYD43afRLzBwLq8sJY0XtWvST0kYlOTvKb5mY=;
	b=WVBrMkjWLYHySyWBLbiPu/O3iPrrJBOyWcobuPoBFZMG1N3lPnsrdTkITSxiKKX4
	dVvcikCFBYdkygPIwlbk1CH2l3czH2FOT7vSYyw4GXyFrkwWL9IL9f/tkDjQZXr6aCe
	I721SSxR+CpJAS5PPBwBi5WY11c5qw0Mdx/j0SHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645101084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YqVy8zfYD43afRLzBwLq8sJY0XtWvST0kYlOTvKb5mY=;
	b=XtEod1hgG5vH8H0rNt98znfQvPjXR/m8x7IvPb6aFn4QCQ7k2Fh0d4fCKR6sUpzK
	3CbQrCZAa1tD2EOjDJcAf4P9btJyjS1kZBjEFS7OttWOK2iCoQNB1nKCnn0ub6EsFFW
	nC22vhXOLvGhSCoOALq8TQcWQDTci/sfj36FVSSQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f07aa7049-5d5311b3-0dd7-46a1-b264-4c9c20b1ef3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2b8865c007c9db1a94491c679211814d2b0c5a7f0168f129dace079f1d7b884
Date: Thu, 17 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645101084
