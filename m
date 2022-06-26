Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465117C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 05:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656221212;
	h=To:Subject:From:Message-Id:Date;
	bh=85bKVNdHK6nAQfsfKzc2/i6SgqwYp24JxTMwcopbZjI=;
	b=jRsmTXooNmcQ3XfaIlDIvTeJGbJloGOyjJeZtCJ9zKwbPaJ9rZc2L5crttLepwqd
	3UxLO4lkgd4QzXdpj70MdhNmNNBOBqbACgbLt8Asie7JKNFt+0XwZRkILmVrBfA4jRZ
	5KuYN+LVwPdvtb2050XK5YW9VdCoHjA8Udj0cH50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656221212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=85bKVNdHK6nAQfsfKzc2/i6SgqwYp24JxTMwcopbZjI=;
	b=WfO8Sp6EDcMGQsCbgLO7GyN6AUHaD5ljZYTy6dohNSAJ8eu7aEozTkU2vlkdvFlM
	W5cYJUNSSVZeI4XXpSJKxvIo1YfQ+fac3pbtRyt4uNoh7Bq5BJY5wMT/p5sFOBcpEWg
	6+qgv5J7VlaV0/spPYdCKmdioTkHoxnEuuwBJZ9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819e7a1eca-18d65d9d-8f1a-4e2d-a8e1-b8156edd09cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08f9e1f4b9a753a9f8330df8e7ddd11b317252cd928abbaa1db57dbf3ee197b4
Date: Sun, 26 Jun 2022 05:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656221212
