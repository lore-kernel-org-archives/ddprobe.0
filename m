Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066A57E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 05:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653110339;
	h=To:Subject:From:Message-Id:Date;
	bh=Y7DTLfdAcDOfHnf4kDzL11rhsXr/QxDecUvE/RvXMgc=;
	b=bfpJHL1sFV4qvRJBVVTsOXaLbYb+8mcKORm9z/2FrcdyZSCyicCfeHajF8wxZ48O
	VSJjd4u7c7/RsdZNF3UoH/mJF272LfRZSkwhtiZccab3WsZyoJUVMitRiDJxNDcOKwT
	uXbdHnLwAlwUMx7QDC2NYdF1rwJW/N3cl/rUt2dc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653110339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y7DTLfdAcDOfHnf4kDzL11rhsXr/QxDecUvE/RvXMgc=;
	b=NxOwhpVyEgw1buVmoD5Ib4sY7MeVkjhHaMcDjPcPpujqPOLvvqAjVUc5ycCa6mJV
	t6vjqY72VpWLsi5A9OqFZ092SSBykwrwgOHGIpF7vOnZhc83rZ11ls/0dzQcoijF361
	OCsGDYlsl5yPgUpoEu/2/ictKdnbGE+FQJAz/j88=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e50df6bf-641a9c02-c071-4a31-8203-95958f83f172-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b10ba32608c81295fc3e42e96268d0b2a1f5e77d124cf27e6233ffd4aaf03c6
Date: Sat, 21 May 2022 05:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653110339
