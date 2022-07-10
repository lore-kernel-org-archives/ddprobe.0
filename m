Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041F87A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657417012;
	h=To:Subject:From:Message-Id:Date;
	bh=oxAgiihp9e3gzPkLpcmndlKe3X4dNt7M4VTVV5haeHQ=;
	b=HVej/P35Ww3QKtov0oy1cxQN/Bt6Wy/22fUVdGWex9V5n17ePz9+TR/4oLMOGhKX
	tv7BZSVUSUkLtbkSrx4Su11c6gIuy+zve1MACI3G0p8l5tPVNrCW4kdxDUWXuaiSvaN
	HwJU48txv5Kl/tV0dCV1HHKnqFrDd4kLF0WH1A4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657417012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oxAgiihp9e3gzPkLpcmndlKe3X4dNt7M4VTVV5haeHQ=;
	b=aHQ9XzcHFBS+i0lqWSW60xd7hTapJffbavTQJU0oUUFa0SW+cJUDHh1acb1pce7Z
	v1Z+qdB0VpP6MELzk8e46NE+yArU0uTwdyOrVpzajL4h5UZD8prfY96cx6HOdhI6AQM
	jhsCQggTqeSQltftMQ2ko4AQmFSXP+9Jn9BaYA3I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5c0947a-8ab9391c-6023-4a78-8b95-ec809011d11a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e111469fe4341b29132e723b026ca7fb9b18c4a3e3ae974337d58c93f8c77525
Date: Sun, 10 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657417012
