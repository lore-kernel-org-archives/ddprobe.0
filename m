Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F4F1854
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 00:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655252999;
	h=To:Subject:From:Message-Id:Date;
	bh=H190f0xEsbSASA14UXJeMF72pdbdWaaLBkO2VrTO5U0=;
	b=hU3b2ghP9qF5XCemjCkg9QcfdgZ1eZ6PjsCg3omKE1BDknIj+LvonKHnAfPoqmzK
	Ywml58M8sdEiHKqKgTdOu7Fh7iIajXnGw6Z7XQFLaGH8PQBu19uSrPnIOPvrUqrTOvU
	BmbwmITdKMn2IO6ekKftl4LeU04tvzAf/DIj/5Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655252999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H190f0xEsbSASA14UXJeMF72pdbdWaaLBkO2VrTO5U0=;
	b=JzXwrMBUqu6oPklQ3cejRAiRdSnlXe0p490N9mayYGx7xs6ClLm92WBUoxg6ngZ5
	czz8rXjZqCWH5kKqflsbSr9plSmKopzDYIZR4+/dQZvtGrBFGF67BjInrbwA5vVAYqZ
	TRdBYxJ0sYZteH8YM6wDcrFvsW+1EwwWlS4WHLMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164c45caf-6d653991-2543-45ab-8aff-8fb4813de0f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4428c5db5b6deb9f2784b3cee4534a1cb3e0ee8df24637d031f24830c070f96
Date: Wed, 15 Jun 2022 00:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655252999
