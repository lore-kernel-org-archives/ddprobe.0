Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9863F7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659918653;
	h=To:Subject:From:Message-Id:Date;
	bh=V4x2CCTXQYGtA3x8VZ9VQLDilV0hGvP0JjTj67MGEHI=;
	b=XQlZdm4izz8XoZ1pXqR9O0L7D8FaifIthR9Nt+KT57bepEPkEzFbQ99iFo7J7tLA
	gm0fdMYLOxqBhysKXKMM3DR6QBdbBckyPHVNdZJr5ozKsQRH4nZ6ZLrABlpbRvduJXo
	L6inf978R1pxQ1iizgMsxeMi8Bya1Zpx/yWw+tgY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659918653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4x2CCTXQYGtA3x8VZ9VQLDilV0hGvP0JjTj67MGEHI=;
	b=JdZkHKvujGTQIuX7h9BUJGlYR0Cz/DT7J923svuNqXwZv09uyGNautJPa6wSDhkQ
	ukMiDBbM3pQy3l+OzTJC0MvDx5BFMaxWNVKWXIpNDqimg2kJoBmcnFlPUR23tC2qv5f
	p0pe3bvjk5/41ArptmoCvqvP7jM0MngUhUXUUPlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827adc9474-91b1b9df-0aad-463b-a73d-f7b5140647f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa5b4bcb935737dffd30dabd1e022dafa5183e076cdb089dcd652fcf79b06e2
Date: Mon, 8 Aug 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659918652
