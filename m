Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC653D89
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657318012;
	h=To:Subject:From:Message-Id:Date;
	bh=+RX7cygu6TX0pQ9UYdvzULgS4VP9MSwz5Q5Prw28i04=;
	b=T1dwpcCqhE/WMeqZc2OUOYXPWZdGTz1FE//54mGuRc+lGv6giJQdri+hWnkExR/K
	iQUyYuZvBJwQgVxkFq/Qx5zKY9tnvyw5Ogx9AwGH6ryXf3biS1YLOz1A8p6Xk8QfYne
	AIqSJuH973Or2Z9H/J0zJbEWoxcnGmA/oVIggD3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657318012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RX7cygu6TX0pQ9UYdvzULgS4VP9MSwz5Q5Prw28i04=;
	b=Jozshg2Qp4oJXLWWlpXap0F85TEmxdIX7A5griUvkTTHDTglpi16kJo1BuZGm/sJ
	GHw4OI1781grh/SMVr5HZ+NXArK7iZ1wLNq2ezGpmHN63eXAqNCWxpiUhj8LZyK06Lp
	+2kwJGFKyvyShwF9Q0/N8+aZ1EbR9OLJqr4WGA5c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dfd9f580-c377cf2f-655f-4124-9ae4-d0d42c68e1a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cf15cf26003a051a7aeaab41c4d8c5dd7957935964297dde736fec61edcddcb
Date: Fri, 8 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657318012
