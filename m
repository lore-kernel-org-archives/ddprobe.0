Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256A13D65
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 23:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654300139;
	h=To:Subject:From:Message-Id:Date;
	bh=sS9ib2cxXjBwkAPKHY5Xt6NqwnY1yrI5r8u8HsMuf3Q=;
	b=OzHVnFoEoLCTiTtCJJgDGAmDGctuGUoxAYEyjOWlFay+ugF+DmFWeMarGdl0r0WJ
	09YCSgbvrSu5Gw3dkHqSOyO00Qb9zJKef396QueSMoBhMjVs848X6odalxaYpxo4bXP
	qTBg0Vv4p7wIa39+CZYORMmmsO7DGRQyT2nnVG/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654300139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sS9ib2cxXjBwkAPKHY5Xt6NqwnY1yrI5r8u8HsMuf3Q=;
	b=UMiC3xXEQOHvOdXd2IRrUkQzkg1U0tt6EvhYjkfsSlUVvKxa0JRETbjZ/I9YF2SZ
	7ae5LXW6b/lOPf99/UjsvjarAFH4v4CjvEjvZd7HEsTiO4QSxuOOL7eZyZnmoZrf0Ej
	pZOh3hiubeyw1FGSnFTlIr1e13Q0dH1mx0jtmtBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812bf8df11-4036d417-c468-43f2-a0d6-b1b815bd9d83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0691b5e17ab8220d2a699e964e220355539e6ca4266537d8219058d6164f337e
Date: Fri, 3 Jun 2022 23:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654300139
