Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217F97B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 04:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654661219;
	h=To:Subject:From:Message-Id:Date;
	bh=iEifsQ2ZfRay6RUCkPvybpeJEbPJ0L0leUGI0VOjxe0=;
	b=Nan0Jv9iTaqYclItS3LpScLhxafLNE60V+1T9ZS1u1hZ6RXgpzle5zs9GfbXIbIC
	SvZnOCcd2NBbbZ3KqgbtXdwweIjfjh5Gioy/Qgf2k3QHEpenedJ6o3Muf+bJM0Qu6HH
	YJgUDvYx0j3pjxxWk8HwH9nwf6a7iVpT2AZh42m0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654661219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iEifsQ2ZfRay6RUCkPvybpeJEbPJ0L0leUGI0VOjxe0=;
	b=hki4WyiDuYbI0ahbGgHnKZblRu7IYb6rvQJK+isd/6AiNoMxHLFwjcA9NR99Y73N
	iyTSdfgdp2VbTHqIwN6qp2HqWj+x0Y3LToy/nwQPEfhzgEGE3+JEjyt58mWtc2UySLm
	CJgmRUm4GU9Z+Xi5jbmPBRQ5O0GUo0n0lLSYaqnI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181417e83a1-6be7fee5-bf0e-46e8-82ae-20ba3c7e5d8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3be098dc9b26e0e63e8a871f363aa2006d4a825d169db46b0c96b74a63960e1e
Date: Wed, 8 Jun 2022 04:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654661219
