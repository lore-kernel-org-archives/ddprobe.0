Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA722103
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 07:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653206279;
	h=To:Subject:From:Message-Id:Date;
	bh=lEwB21n25HOJUK0h0PYfD7iGnlV0X3ZpiBR8p3BzCfU=;
	b=j5F17fnzQGsHFOLLzcOs267VKhmtQgxT+ECZN0QfYovTRybhg1L+YBm8gMC/brsg
	SBuxa4Q/A2ryqd9vza+h3+epvDDGyHdbqFLn4LLpzICdgwy7Zo45K/itKwfT4PhVxWu
	izNKVOMfoMlt69Dlf8fs+ow5NJHSYzybqnIu6w7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653206279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lEwB21n25HOJUK0h0PYfD7iGnlV0X3ZpiBR8p3BzCfU=;
	b=icQC3EfD3/dCUjlCnYaVtaEM7eWEkQGjDFTFaF7KXkU15zn4mX/6Ls/6HTZafHct
	zUhFzsmxzt7zipTL74vQE3Zmd0UpzUlhIM24NvANJqdJrIWY16v98K1khIPgGcKaL4c
	x5ylg0iC5oJNdk9s2p3qRUGBRm6spE0dLoYVxCLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eac5e440-f274e68c-49f3-40c3-9eb6-297e572fbbab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba89d92433d7ed2d747063770f975d7c6e73d467394abb1b23999c6186e8ebf5
Date: Sun, 22 May 2022 07:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653206279
