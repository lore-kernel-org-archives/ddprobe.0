Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE657C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 02:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654654259;
	h=To:Subject:From:Message-Id:Date;
	bh=3bWmRpPZ4NWLrMMV3WEXke4/9/KJUrqZ0X4LxP71ZtM=;
	b=gqiicZRNKg1gek9c6XUv/p8u/WLDwWaikuLCJWbSRnkNYlMcirRPIgpB9t3k9mDw
	ZdlYe9JkTTF4/Y+H8o9UqrbPvZ5rxwJ8qACY5RcWV8LSgn6Z5H1BQLFMMw5XlQbBE+0
	SYgzugowEd3gpimE0JlUBq40j587YtQuKF/mveiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654654259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3bWmRpPZ4NWLrMMV3WEXke4/9/KJUrqZ0X4LxP71ZtM=;
	b=JQHd3/RSLm07IGWUBeBDyPhnlQLzyRB9dxKx3GRBz8SeGvoYuls226Ehi6hdmWw6
	M+qIUvuomhKczw0jC9A0xBnAcT/Y7uDXzu3XHGlrX4Yyr4aCTz2H8ABFPQgRK6RUqd9
	otE1FMNO74pjSJ3N/HDkGy+oLZb1BVb6vOtplvfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141145026-128497f8-8472-4fbd-8f20-44a748a97998-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b0b0c9b0ae5519987d94c0a27c6cd36f6e68a46ea59882c0ab69c3539a6ef8c
Date: Wed, 8 Jun 2022 02:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654654259
