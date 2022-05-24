Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADEA628
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 03:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653362879;
	h=To:Subject:From:Message-Id:Date;
	bh=gAYq3K0fKq8VV48vSosHyiUgcpYG/X65r+1mojvLoTA=;
	b=Kt7WrkTsm+tjDVnCP5ve/yRwklMa6FokmKWtCSiuczz3Em1JlwjwY7Wf2QTxkfU8
	N00GC8EO6aho/RoQ9h0GJdLs3obT18OtJ8ahIMBzv6PO8FZri3P9fnpeAr/W+qhmjcR
	KYXD89O3kCovQxO6l6akU3czbAJP8/xowGgjBxbY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653362879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gAYq3K0fKq8VV48vSosHyiUgcpYG/X65r+1mojvLoTA=;
	b=TDYb6R+fVdl2dqcs06SpvMOubvhFfWjlvk+p22J1a3sX53CjxJr8izPhmJkNWHpz
	5OFtgcy2t0LmxEc80YYfLZWKGQ0k/igaRN7dVl2SdHTtQbIbfGYVUZbdCG8xDMqvk92
	xgKT+3eKt0h0NTViNVbaQo7hsW55g5HMCtHTiAP0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f41b6b03-179b36ca-f0b8-4d44-af54-4163768c85c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f11bf4d6d2afbb48b4b57cf06a128e9756a6a66fe1972da914482eaa706875c
Date: Tue, 24 May 2022 03:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653362879
