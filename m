Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C80366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 06:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654064219;
	h=To:Subject:From:Message-Id:Date;
	bh=6ZcB8VDtuucQxT0gu2TWOUcp1tPfojtdI0iFTD/bxz0=;
	b=NhKXjdcbRvwAT2+WMe1AHy/KbkvUHIOeGsw6MIJLPsZGL1kotFLBBCzVKUhyaa6S
	2KDDJv7QEtDXRkxrjYVWuHGLQDh2huGwMUlaX4nzsa2tpVa4C9bmaphKqJ9KO9dRkh6
	yzsCWJpdlya2nUR8HEUWWcwkGjTVzJtjGspbgHIo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654064219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ZcB8VDtuucQxT0gu2TWOUcp1tPfojtdI0iFTD/bxz0=;
	b=YXQita7pBJGpfVmvEFP2JOyyuAJ0tNcIha0xXWET+Ikfv9eUxUTNewjkzTNI6rQp
	c5YwREwo6QFu3/X8XBerkM42o3YfTpQReDEz/WvCIdUAVUH2ptM1wt+yJkr+Q2sUidD
	OsvJIWdU5WauJ8DcnRegHk9rnp6W0oDB0CsEjIlc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811de9047c-1f441ab4-d5a3-44d6-adbb-d6f63d7404d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc7b2ce86f685a92e987231be51df3f5deabffdec4ab337e269d4d812ca4ee62
Date: Wed, 1 Jun 2022 06:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654064219
