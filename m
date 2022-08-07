Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5B81101
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659832852;
	h=To:Subject:From:Message-Id:Date;
	bh=nk6dkBqmET6iEuuUGQZHSIUOTxPiEHd/g3mYi1Uo5oU=;
	b=B1yKh4rzDxjjO052MqAVkLKOnyom1q2dGzNNZ51x//gtZW8JHoT4h6ZtxltZmfGy
	xCxmK6ED5kKlDcTGD7a8Q7qJVRU8J8hRiToGq4JO2zWc01vh9AmWhQ8nFsREba7P5C1
	Z9szhHfeoQea1XaQTxMK9dVLaSaGUJyyik2ITaEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659832852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nk6dkBqmET6iEuuUGQZHSIUOTxPiEHd/g3mYi1Uo5oU=;
	b=YUmYq0+2pBEdSTVDizdia6Z1zci0WCEY+iteRK3yTKcgs24DE2gHzOvqrLr8aSsg
	jzO9aXhsFHE1ud90feYwTnAPZyXdtB4vWy9+8s78q+vNqFWMIsSr1FAEB8wKlIe2tRQ
	TZm83Cr3+wsrFtIuV30IUJ5PgbyZELIcrMIsD6Mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275bf604e-9867ac5d-d8dd-4674-b8c7-2862842b19e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe874e777a836be9b2967561a495783caaa166c0809bcca7709e8742509295a5
Date: Sun, 7 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659832852
