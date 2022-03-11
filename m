Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACCFD2574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647036985;
	h=To:Subject:From:Message-Id:Date;
	bh=nVGM1pLze11iwxBbmfBqkhWw6Zlor5Z5hs3seDsWBxk=;
	b=ehBRVt5d+hNR5EWIPPYci2ytg7ZcjJqswoc7yGDiWgPeCqZrMflyGTCTA0gKaH9E
	296xrKsXA9rXML5pOVlMKJd5ijxaTIUSO55G3uLX0IRfjxK5SNEjoNVSS33UnrtksCI
	yWWcZy7pGM5U9QsOo5WpXWtb6hqgTdiaE5NVyn0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647036985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nVGM1pLze11iwxBbmfBqkhWw6Zlor5Z5hs3seDsWBxk=;
	b=KuK/PkRJyfGMOsHW7EH6vufm8MtjiyTFJVaX88FZ2MUX+zjHZmZ6Jv9BOZzf96gw
	Aa3gzoQz7n+wZmOTUq5D+8nj78icV8BaqK0MoXmq20Fj4wfgEYGF3Qrqv+iUSWhQ7GD
	l333lx+htHNLP4eJhEcxRU8S+1fbWgZm3gqmZjtc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b0dee1d-119c26d3-fafb-4773-ae8d-d4a53e161829-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bee56c49bdfe2796fc04af77f5b331d55ac59cf4afa64cb761d804515eadcf90
Date: Fri, 11 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647036984
