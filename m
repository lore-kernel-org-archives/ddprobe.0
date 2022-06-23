Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5B61FB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656007612;
	h=To:Subject:From:Message-Id:Date;
	bh=7RvgNUUXF1Db8iRRPwOJoSCA2MdBVtC+N3zZS0LCYJM=;
	b=RM5IUbQ/kbN4HmxkMhyW5C3X+o95efmECU0ydQX20NMa2yVCqjeQjoJm4q7xEcpU
	UzfqN5ZcOFUx+QbVMFBMOspZ0fivOD9xyg/2ebFMi/KWVW3DWM6xX6wzpH7kZii+p/f
	ZvC4TzDx4keDDDQreFZrytqtOk+Nyj4zfQcGWBj0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656007612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7RvgNUUXF1Db8iRRPwOJoSCA2MdBVtC+N3zZS0LCYJM=;
	b=hUOiKqwMy1s9bZuplTwiCgWhibyCEmE0DhJvQZ7AYQbMb+armA5bfRRohwl+Pbpq
	GH10c8lNDrtQbzDj6gHTvrPaQupgNm7Tq64TK6UcNlfjpvjXLyzKao0Bv9usWxNTJos
	DtgEOonjFbmh631w+gaiaWu3ZW6PwqYPyY++9CNk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018191bed7b4-f88ca45e-3fd2-47d7-a4ed-31361155ca9a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe74a6301810104318bdb5e38262232acff48c93ac67b2235b5d8239a4308b17
Date: Thu, 23 Jun 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656007612
