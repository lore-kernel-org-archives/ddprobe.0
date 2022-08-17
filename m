Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D3E7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660700452;
	h=To:Subject:From:Message-Id:Date;
	bh=LrpRTEZ2diKgiMi/OuY5kZ4VqE8/5N6D5tkR0cHEOy4=;
	b=ijbvMgRBEzaoRiU9Neoo423H9Zju+cDVXZXJIfMNzvG3pajh17UB2YaQ0d9GUnTb
	U3dqLA00Az8ZpBnMAczaUyIZV63wya/hh0W0eTCu3CimrKVwJrJTFRdzCZ6B2HJlKCK
	r4UZeEbK/GzL9Wh6fUq5qfNBX/EOvlsDUsg+oOPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660700452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LrpRTEZ2diKgiMi/OuY5kZ4VqE8/5N6D5tkR0cHEOy4=;
	b=j9KPt2hIG/hz3bz5kPH8Jhfx/iQMup1qfTxvhGl3dQRmJrzHkSq4/riQdmF7WJ7I
	az/vau0tSqkFYgMvFstII+zUmLSKKkB5YP5CZk4Cf0jEChb8ER5fA1stYEHNIlIjs6C
	JFSyzD3oqQ+PSAJ88cSD0+rp7kQOkinxzx9hYE8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a975e733-49a94e42-1594-4387-bfcb-569ab029ba06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b8e05cd4632c726d862a88b6082b930880e15eed9f9e7d64217b458047c1a88
Date: Wed, 17 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660700452
