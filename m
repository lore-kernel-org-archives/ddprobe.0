Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A6E15A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658452012;
	h=To:Subject:From:Message-Id:Date;
	bh=LaRQuUouNVBr+tB/A2Z1BazQIyG9g+KKqfVKCkPnbXQ=;
	b=gWquIAzGiFEvH0W1aIjDYK4n+Ac2izo2+NI8VyPeaMPR4+kZCNIMeCKMSXGIhElU
	zV08Z0JRm21RPNAu3naVnS2jzJ6FWDe5JBjB4awabkkqLn9/mpYUFc9RM8j8y3z5JxC
	VpP3fzL9GXiYXBiwG9IhB3836YWvU3oJ1wbvR6fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658452012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LaRQuUouNVBr+tB/A2Z1BazQIyG9g+KKqfVKCkPnbXQ=;
	b=FMtxppuvK6JxEXb5BRhQjtG2uoU2nBJTHQpeI+X8vbxr+POrDrg674M0VD+ase+J
	NSSJsITyhrK6G3bkFJw3nwzTkcFgwBzuh4Ufn7u+dnRYMgQfUF8ykJ18ZrsrQX3TICB
	g9hXoLOgnuHCEzv+fNpPZSQXnZnrgxJ+z6nqZ9RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018223716d03-5577932b-f17b-4758-afb9-047989d4775f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b01294a356106368f98110b80fddbd8fa8c78e05c2dae613e594a65d8600ec3
Date: Fri, 22 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658452012
