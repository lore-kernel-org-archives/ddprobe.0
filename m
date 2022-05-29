Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E56B7A
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 00:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653783839;
	h=To:Subject:From:Message-Id:Date;
	bh=kfYFjumEgYX7wmo00dA98MgTG+TbqeI+KSmZQMJ1zRg=;
	b=Vq8thkasGk9WYXl9DBhQbW9FWmHOMAr0upaBGNXzjXIRnJ03W50PeeoJt7jKbMXe
	wVhydBKt+QlMCQDnmSFdSzLR6qzrtRCZ6dcI6mHmoifXT6leZjc7HjW07R0CI6mfJqj
	cpQ5VQJtUfvG7yq0UFBiQcFjRruoTWYUikFBwybs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653783839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kfYFjumEgYX7wmo00dA98MgTG+TbqeI+KSmZQMJ1zRg=;
	b=goWvHIy6OTcCW7Gmlt0uOXZ5/jaZcsJO7r1L3OGHuw/8l0HGht11KjX18Lx1eQtn
	TK7oVW2DXJaigdPN1y6d9r8FTAq9n1/IF7H3vN9nf9Vs+PZonN7/lwOk42v26eFV3Ck
	sZyy8oKNQn7+Zxaa/LjrMj3ZxJrQLc5FDsIjp+AQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810d32c22b-fd35fa77-4fef-4c5d-9537-c9c1f38d38b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ce22b1d8af1fe83c3d279110b33672ca01d310bbe1722166999a475df2c17e8
Date: Sun, 29 May 2022 00:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653783839
