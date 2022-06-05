Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B811FD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 21:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654465799;
	h=To:Subject:From:Message-Id:Date;
	bh=9t93NCvO+O/ZsGikXK5xaxHyac9cHpz1giXiASgrPdI=;
	b=D7jUSj7QC1AQepy9iamQPlhQ8Zx83Ky5odt27qtWplpZDJVKO78ZozszImE8RwLE
	G3Um3BOe5tWUGxj+JM5KdHoXkNETglKbOtDxE4JWFNIBPEaT6YtGvWbBco9PBrA4Lo3
	zNXz3DXS6QaLvsZNNcxQhxiKLPkA2A5tBqsc7jLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654465799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9t93NCvO+O/ZsGikXK5xaxHyac9cHpz1giXiASgrPdI=;
	b=fTI4rlXEKU9Br/b5Sz+42PeE4hmOPx7X/hX8vjSd6GOKXlOKvPzfNnaYNGMLaDV7
	4uOZw23yOcMi6x4qUPZj21GePuKGkjp3TBjn72ra0TzIMZIG7IjkhQb0VQ51hdSHh+z
	gmR4Me1vF2LrI/0pI0iqm5MCMqF57eW7hl+rl8HQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135d8a43f-05a83f22-26ea-483f-821b-a950d5996ff0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae28439f4d0a4dbbb1649095695289e1d32a3e541c3f24c8c05fa84d0486d362
Date: Sun, 5 Jun 2022 21:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654465799
