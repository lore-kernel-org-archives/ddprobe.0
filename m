Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD87A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658891452;
	h=To:Subject:From:Message-Id:Date;
	bh=GccXQpUchCJW6FjzitGxcNF8bCo1rCGm0FXXu9cnob8=;
	b=f8D1boLwpoTQWP9MbA/I8YOjmVT7kl2na7NBIIF/pk2zIFT88Q3pBDL1Mxgd3J0C
	Q0OeO85Jss7doILuQAb91tDB0Ui2KrJ3EApcIak4vjndHCdupGFVXynMg8tBJ3OAmFO
	1MHttig7/BLMFSgbI/x3pmeF8oJWsdqFNCjwxXwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658891452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GccXQpUchCJW6FjzitGxcNF8bCo1rCGm0FXXu9cnob8=;
	b=GYxEq5QKBKR6R5FHq/HBum8lGfQWrr+cJHVW6GQafH6yeJIF5fvX9SrsPxwWSNH5
	fLX4oS7gQHilGeAB3r4Q6Et1EZb2seOWkUGVgms9wI9rlQ6fPq09ip8gQy+j5Gp5XKL
	5pjDhqPUh/06bkYN/gsz0P2UI67+ntjdfQuL98QU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823da2c0a4-abf55634-4789-4fdf-b5ea-c4d19acf6764-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f378deff04527a399c8e180df5ef7dc4a2315ca7c2c07db47080fb9e529022f
Date: Wed, 27 Jul 2022 03:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658891452
