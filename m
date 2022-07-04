Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF7947E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 23:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656976012;
	h=To:Subject:From:Message-Id:Date;
	bh=icEftXGn85BZItPx18UdgCtUNMcUpwnfYLMLfZ52A2s=;
	b=VD0bR76CPsfd/kH/rQ4Le0sqGFXkndwT54YWYFN9Qqys2H77oyzUFLkJW9fWXzrp
	zJ5D/mX95cp9xm5KEJ9pQa81NAjTXfetU4zF8m7nTtntcaiCZ0+FMPnmd0SK6mvjWQO
	1ycRRXomFh8vq7uIwqYEVAOE3XqPIMaDJY+Jvj6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656976012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=icEftXGn85BZItPx18UdgCtUNMcUpwnfYLMLfZ52A2s=;
	b=N3LANxN/WOv4E20yLQY+fxsCWn6F17h2kKFcL4uw8OXadiacaOqjepJ1WSiyx6ZN
	4sNzQ/VwdfU3Sg/M+AmwQ2zHzjLy5/z/0QRVvpIy7etyBkrgjwrZgsBRbD0NonUmlDQ
	yEwwizCsBgMI6CGZDH/BKLaOKcsIUT3IvOpXNNtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cb7773fe-ae7aedcd-24cc-4759-9885-2d7c6e47a35f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d27fdba3a42186623717a09a16d95d039edbd926b6c2e1a064f6835276293c4
Date: Mon, 4 Jul 2022 23:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656976012
