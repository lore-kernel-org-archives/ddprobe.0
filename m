Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671486375
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645529485;
	h=To:Subject:From:Message-Id:Date;
	bh=GSqGg+do0y52R1aZ8lTicpKUDU5MENGJrErSpWqKGOY=;
	b=VftVi+hwwDzVdDvSLED/MWSMuaYjIW8kdS9AXLCnHAqgdjIaDDwQ0zbY+mN9B0oR
	mzQdRjAL1RTvQNZZMBQ/oShV2TkKMpO1hnvSCR5N7jaLtT2PJ+AirEtTaufgBKtftFh
	OcWarNX9cGfj9TMD+AxT5Zh7KfjOww8B4k0xHUAU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645529485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GSqGg+do0y52R1aZ8lTicpKUDU5MENGJrErSpWqKGOY=;
	b=JrGRe4Kb+mfhY7Yl6WU1LoAFH1ZjCdZUOxPuXm7hDbwAH+ckHp6twTT4w0WiR7Yx
	V6TPF9Nh92Yu2edlAAJJKUTeLQ47/1+NBBrlGBJ87iUP9WqF3hj+Et3/51zAsS6i5wc
	d+qvEoC5QDVON29zsRUxjK3nfYtH4EjaYxSB8R7k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f21334e21-5073f4ae-5a49-4f5b-88ef-48174cf855b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dba67772547b52743fc1207a734d2c128773487c7bc8b8ad3f4bb54e1c92c0b
Date: Tue, 22 Feb 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645529484
