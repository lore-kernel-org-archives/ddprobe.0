Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2606D642
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 11:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645614084;
	h=To:Subject:From:Message-Id:Date;
	bh=laAVhvyghM/RYxM2jzuc0Wjw+D4Y7+86kXm9Pp/Yl3U=;
	b=Uw0gJr8+FoXcTTYjO/9X1AdqUZABQEM6f74x+h3b6JkDwAAA068cDoz/DHyk35dm
	6dtJPQwrEQQJoItW5ykOszvIJusmMcPBgFJRyniWqazFLhuDR6ekonw/L2YxKZs96WX
	5d4jqqb8nE1GlxpGvWyFvx3N+ifXx0NcfO1neGfo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645614084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=laAVhvyghM/RYxM2jzuc0Wjw+D4Y7+86kXm9Pp/Yl3U=;
	b=W/0OhPjddmAKFErnfeiao8HqjfGT7V6xZp/LpgR2E/Y4kXdV5BZnHv6iZ4TEnqUe
	Uvm3wNLE8ScK/LXiPHhqrRAUts8PH+2fB7AOnQWwTjdQ+oh/3velkooI6sEe9siGbJy
	MDtJfmOfPELPmN7duxH8vSGRJXwKI9OLJY+R2Ow4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f263e32a0-35299cb6-2ed2-4b91-8d88-8a09c2ace36b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bcce65d5e2b806dd4ce9ba46689a58bcdc384e3b002981d3f011a3d81735ab20
Date: Wed, 23 Feb 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645614084
