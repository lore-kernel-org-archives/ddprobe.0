Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB555C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659301252;
	h=To:Subject:From:Message-Id:Date;
	bh=3nklacnWEg2Iwe7Mr3ddDBQJjVEWwJM47z/+RpA/rLA=;
	b=Cd99thHg5MIdk+4bNweHyRS83NSzcvitmVnXKp5N+ULgM5HIFbxnAnBl4tyOp3Oz
	nOZHkBMH4JDhes0TKEz6+g/c+005RBY+jPSozFkqy+FQf284Vt/U0IWtKnG9RXqtIhP
	W6so3ulY5UeD5w2/Gm7aOi4bOATGK8XVWrijL38s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659301252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3nklacnWEg2Iwe7Mr3ddDBQJjVEWwJM47z/+RpA/rLA=;
	b=Zc3szj5/YGgeWH8iCYRHRgcXiNl3QrbJsrU5ZOo9A7WcZwBWqrxmBZhnZDmf1OlV
	+fKMaMmVguyDIpVJKeGacTViwGLgGL96aS1m/L9qQwQTrbuspl1VqOCofElQrA50xD2
	5T1bp5JMV1spdGvXP6x58rrOgBqemUT1saWuhkBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182560fcdb6-040a6b87-af06-4fa3-b0b8-7f7fe54cb567-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 703dc6d8f26d093bd11f03ec7554abf6e090dbc040fea8e81c8de467fbfd706a
Date: Sun, 31 Jul 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659301252
