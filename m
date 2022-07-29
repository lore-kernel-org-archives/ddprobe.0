Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E5C11360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659097252;
	h=To:Subject:From:Message-Id:Date;
	bh=XA4DBsFxthBy/gC6Ui4KW4hS2ePyNpGzGmadr6dNwtE=;
	b=alpQoRmwR0/PJ8cS8XgOEQN/pz/4f3cwNzfqkXda6QS7bz0Uzg4+WilO+XeR9Xj6
	p1C4X+yLu1jKvrEpL+PiBI+lhYeojn+jNM0A3pEA2VJFTIwnWRE1Md/SLZvfS26BTrO
	V9GQJPwZk9WD03jFP83CrK0ctzizE+/roP+u0W6M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659097252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XA4DBsFxthBy/gC6Ui4KW4hS2ePyNpGzGmadr6dNwtE=;
	b=E9wcLuNsZPoXvEyfVPq27TUz+UIInkmyH6jzXL4QAxgiD98k//BLfzkZqikOReVi
	lKgu5Dr5Dhht3eFR3SfdXgwfQ69WyqKKwTcwfLLs5BqMLAICLaSQPGTti90rTIH25aY
	0EbMho7IQjnEn2u0UGl5nP5XJw1OJwgOiUKcVROY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249e7029f-5cf0cfa9-2c89-463a-b745-afdcf27e5bc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a0b5c3c755c5d5a53bc25178933d06522c89af9a778e3aaf76e21b9637438d7
Date: Fri, 29 Jul 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659097252
