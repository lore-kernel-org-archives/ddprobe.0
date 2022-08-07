Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C2B1852
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659879652;
	h=To:Subject:From:Message-Id:Date;
	bh=RA2Od8T9uggdDEGLucqNVtGqp6whxfTopli9o6yNSGU=;
	b=KnJR4bFkq6MuImgcxPnnWk7QexmvkfyfrHsCp+Necq+z3b4sjfmDeLk4FSHyi6LN
	SEHdNpNjWJHMv9fEXTtNCNX6LprqyqUGGJq3+hHfLeMDBvvGSWpMk1y8waZOydzNsVW
	ByT/yKux3O4Tjv1+g7QmI2pzxGdwvulTqlgAT10U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659879652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RA2Od8T9uggdDEGLucqNVtGqp6whxfTopli9o6yNSGU=;
	b=kSQ0JBzx7Js3lCpr3Ve8PoOLq/iNFy+DKoJZ3rwMzC4iQZHEQGb8KbqQaJ6ufIOJ
	/zaNN4gmYsosqcfUeSGX4iTmVZLF3gMpqmmrF88r0saakZfRkMHXtrtC1edL0jowsvl
	aGcw9jPBNzm9HAx0stOAIxFJFSWhndoT09g5UR+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018278897d0a-a8914221-d4ab-49cc-9364-0a056fbda4ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c6a26e0cd0f7c53e0063e63f2ac62f0a4594c41454644b3d6355554c45287b3
Date: Sun, 7 Aug 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659879652
