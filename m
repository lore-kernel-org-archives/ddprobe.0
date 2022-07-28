Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA377A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659043853;
	h=To:Subject:From:Message-Id:Date;
	bh=v3uJlAoYK+ZJiEtU7M3K6SXeDrqm2z+8rLzDYuBCrl8=;
	b=bHMyRvVYMhJ8gaq3ty1/raKccIOEcGsiGtU//5uvIuCRm/ebg0gb9YYspO0toUVt
	3dTkwwyYxmmNG9EQ3RBHP4VKhzJuaRpxpidvtk3NL6v/2BFKvZThR5KMFUrl/lsOBAi
	5rlECDcUNVA9Gbfd4DW/QLfRgEXLWoJdlYgHboOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659043853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3uJlAoYK+ZJiEtU7M3K6SXeDrqm2z+8rLzDYuBCrl8=;
	b=kAh9HDDsu5nZPLYtJqzsULJ9/5vbZIcf3Jnnz9FXvkj7luBGpIc3Z4HH8XS5ydQ9
	TkXUquhq0D6x4CRgWKJwavXIe5Ix7j7Jh8Jm2DUsnseOdhbEy5+UqZ36brzNQ3QdirU
	zI05clylpydo+/0TkFyVzCdlGgqZkbds8XTg/35o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018246b83109-d6c0edfa-ee76-4a0f-a1bb-6ed7e8d691ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fcbcb101cca944e754e9d3a6bacc06e6eedbdcb5731c6d1693a0ea76ebca4a1
Date: Thu, 28 Jul 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659043852
