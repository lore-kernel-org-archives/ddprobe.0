Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8501383
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660612252;
	h=To:Subject:From:Message-Id:Date;
	bh=1JELInKHjs8DraX9fZi0LcsZRJ+LKFshSUsB/7znkXs=;
	b=SBoDCXSyPeWnpsbDhUaUUaTE7gsjtXnkDvvD8pOxtDh0HsHUFEt/zZnuqMjk8rCd
	tfyVzLZP/jtbf32jpLlhwldvrwck1V4uqeGosABtUkBZPzoP/d84cV0tC9tX7WG9aY5
	VlPkXdQenSwcRf5B9F0U/62tQk5jD3dM6pxQnqfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660612252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JELInKHjs8DraX9fZi0LcsZRJ+LKFshSUsB/7znkXs=;
	b=PS/loSG3upEIud8HjgYJ9jZRW7KLwvoI4cmyRfiNEO+Rncow+maRkpocnfTogj91
	RQeEDVW+IMXOyc0KHCf4kYfsWzYNDnsYmOYPqlyU16OMQOJSghUp149KBxSOUT2Ke+2
	jn0koTEVmU3HUaN0Qe8ePwDf1aXxJmYME352NLI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a434137b-e8bdd296-2f36-4dc0-946b-6c81464265d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5219181b1855fa0ab11677758fcf187cdfe9f3e420c3e33f95f05fe2b764abc7
Date: Tue, 16 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660612252
