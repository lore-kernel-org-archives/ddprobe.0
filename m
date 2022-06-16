Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFE64C7D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 17:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655400599;
	h=To:Subject:From:Message-Id:Date;
	bh=5Ht73Grsb03Ci9n4H6L8OgtZYEwROj+iwzMgfhctXtY=;
	b=Oc8yup8YGMw6Anb023KL9MgrWdZWV5/RMaTHfD4txx0TXprLHgl5VoUkesnfvYGU
	g6P8YzYCLjw2PeRey77nWht9sGs2FUeGT6OYMZmdqjYqTrZXkdi5edEZkIAANVXEK4Z
	EIv/sZV0JCQytUXafgpHaUx2e/bcAsZfDgapGqQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655400599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Ht73Grsb03Ci9n4H6L8OgtZYEwROj+iwzMgfhctXtY=;
	b=U1Xuwqz4gbxCqfAZJI5XzwEBJEgb+xqRxMkfHo9viNh4JA/AW9BT/IPL7YZxD/NE
	FIVdXuPfBiiOx9QRKpMFy5o3LDadWPvtvl+j5uuDY870YjpvcbY47aV5hfwAdOOOOjf
	uD64+vn2ZkWJFHPYCzrKh5m/YQmque+bm/jr1WWw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d908ee3-4d59fffe-d7e9-463b-b694-35b3ddd18f62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3298dd502a12a3e674deb4ed06c0d087e834d2b179722f23c9950f7dd72a3c4a
Date: Thu, 16 Jun 2022 17:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655400599
