Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8681578
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644939984;
	h=To:Subject:From:Message-Id:Date;
	bh=CyssNDHCTt8Bg8/Q2JYAsYYS/wOAJUeuZgSN/T33yig=;
	b=fzadJdkaRQL6LZiNkyrmg9yMzKnCRUpsCaR/luRAXFeoRjiGICUoJdZbQ3SfuWcC
	i3gnPAy4lx3ILRq2HnIkAEcPQ5yZth048lP5Bpjvji/wVONAjcMrT0t/rFSnEHnqfuj
	qJqOXvOmIbos8QRe0F59VwRMKC1yesceLx5sSS2E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644939984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CyssNDHCTt8Bg8/Q2JYAsYYS/wOAJUeuZgSN/T33yig=;
	b=DYqAx4dxLI7Ah0Ne982HSDNiD+PRjTOMjNf6BOi4f5uKM27vexxCuhrBsnwkIgu8
	JCXLqE0apEWZ23o63ZyVaqiN1R10efxDdfYTkyDYpU7gT+KM+53Q4LqX7PEA44qXzjA
	mISJJr/qLJfLLWgvudMpdeqlAUZq20etqdS9T8ys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efe103f6a-3499e2fa-8260-45e5-b51c-0b8926a916cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6432eefc9989cc65b1ed5a2188f785ed6441006d94fd5ad0c6174fae4f5ceead
Date: Tue, 15 Feb 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644939984
