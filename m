Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9037EC
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660384853;
	h=To:Subject:From:Message-Id:Date;
	bh=cJKNL/nMXFhkKb434mXY5cKpM/egPHrtje9YtLDi/GE=;
	b=EVBuu9Op9n/5+BiB4Bnn5jEwCOSxqB5ZLd8a5+J22I7NSNpLGwHSGjT3UvoiJUcF
	spz9rlDkYkL+69zDzxlt2uIVidka647psPPCQiJ9XyET9jCD3yLx9OlTDwF+3ODyu5j
	aAY7HPOXvsVkAv6ansMQW72rw5GFI4pd3tN+82aU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660384853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cJKNL/nMXFhkKb434mXY5cKpM/egPHrtje9YtLDi/GE=;
	b=TqcmA3OCI30pLC7LL3gXHxQ5Sva5V2dPkRIqyovrA9HQUBf0thWox/efs+BfnaGn
	0YxgiaPPlLRZUpGc6J9cEpHGvaCI2AAZwHWOBULTQrxtZIOyuPnI9pmPYOSXdmqi5R2
	WuktKHT16v+PGjt++Z8gxL4KHWOSN7PtUVZWkHrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296a63a4a-04ae0e96-907f-4ff2-a49c-1475c8b67da7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41cb5be732f3ad49a0438055f5cfa12e110b42ddcdae255d6ab3c6ec06c22867
Date: Sat, 13 Aug 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660384852
