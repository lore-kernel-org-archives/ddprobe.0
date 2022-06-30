Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FB17B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 17:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656610012;
	h=To:Subject:From:Message-Id:Date;
	bh=WNCsvKsiR7AsmhPaXkaNiwGFYy+MQeCN3cjji8ReoHg=;
	b=b4951/4iYOi7FeFbsk1aRQP3R1LJx+4tGmvlj/qg8Rl2Y1v2phuR0hmKj8P0iVeJ
	ndm13/rKV0Y+sBxYnd2cLU7uFpGGRIjnfG+ChCskMt59wN/7YhTraB0hkM9T2ydGI9u
	YqyYAClirhFo9Rb6g8G2+x77SYwIFlp3V5ykPl00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656610012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WNCsvKsiR7AsmhPaXkaNiwGFYy+MQeCN3cjji8ReoHg=;
	b=KvBxZvdNzrv0VhNk4di0CKmKji0MJGvfVrUhCboMgPoGEX6gDmSObb3jv2ztvrqA
	zQ9VoDnajsj3I/kUOH4qgXxvnTFAqYr3t7OwiCURsZQSbsvQ4T+QSKv4SeAEO/DvGZp
	k1oOcVoXnG+N/XE/OJAYX25vU+28gIetlbB2jUoU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b5a6bcaa-a864b0b1-a84c-4d8c-9ce0-7c564e63051a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1016670ec1d91739b6310b72c7ef95da59ec28386339cd0309413bace34be0c2
Date: Thu, 30 Jun 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656610012
