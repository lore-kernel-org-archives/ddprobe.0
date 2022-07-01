Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7121C2B
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656679612;
	h=To:Subject:From:Message-Id:Date;
	bh=mrfZkw2deTBWyzCFmwLBkuerScHWLIgdZSYjvu7acdA=;
	b=aXNl/B1GbdZ/vuW06A45+GUgNuj/S44dSFhg4oOJwxXqDsKV1gMovwZpNSQtnG08
	aO3a9BJtyoq8E/6BQ3D28TRARHEzKY2+EKeoSXOK+6fKlVoIbyjUiZ8Qu8AS90cR/M1
	qRf8pa+mgYMNPUQeSlJZuQmG5fE1DGyVzlcQsg0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656679612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrfZkw2deTBWyzCFmwLBkuerScHWLIgdZSYjvu7acdA=;
	b=g+a9ypvz7oOm/k+DdXhmOGJuQA6ixxFEY6PDZ7mKCwvHkEm5apI7TsRvwYK4/jLW
	1zV2nWzMhw4zVk3RiKFi2GXjIjPGbGUMjfpbjiYyabgrrPakax4K7iqJcB9JFYlAheN
	oF2s0sUvBY09yT150gLCiE/nV80bgApNYHl3nMXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9ccbfce-0d541cb5-bcdd-4425-b968-47745e28a177-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a5330b13867bb2d07ca5ddd907299cc1fa4c1c08c0b0db2ea0d6970512aab1f
Date: Fri, 1 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656679612
