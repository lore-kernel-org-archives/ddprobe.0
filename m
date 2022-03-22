Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D38DFC6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647962185;
	h=To:Subject:From:Message-Id:Date;
	bh=guNlBwXMuaqRSPg9ue6qEOo2YTr/6LfqUgaSW55066o=;
	b=kv3YEOXLg0sFQadC9J774WxTY8i55lxLFIEv2bH19psQBWmVzVArTfjb8vb4s6DO
	/b1n7xxOlZ1+PvZY5gRR7uvv2qBRoAgjZjPOjm+FLzN/kWDMEYkUkozyuKExOUbHxgq
	yeyQovt9HtglsB3bg5r/v+0RVbKN9Q6GcgmZyVlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647962185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=guNlBwXMuaqRSPg9ue6qEOo2YTr/6LfqUgaSW55066o=;
	b=QK7RcvOc/BMBFKHud0XqtzcisQ3Nce8Iqnh2KVdwefo6HU4hWWAgUyVq8Fes2hwO
	M29BL9oQVOy9WxoTqrAtO9A6V/TAUA2056a5qDvQHecylQuNDm63ydGnR0eY62T68GJ
	47cA35KQhPzRoXx1VEHikl4MJSyJ2ZsVc9SYp9r8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2335c66-597eb492-dbea-44f5-9fe6-d2cabdc9f554-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5984266921a29a86504fac1d0c38b50caaa1bab54a91b1f537ea45656c9173a8
Date: Tue, 22 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647962184
