Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131F11FA2
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 18:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659810052;
	h=To:Subject:From:Message-Id:Date;
	bh=dTABARqo/cDrErd8smKUllco2sW9dRn+G2LHzr6QVfA=;
	b=awRivyTGQyAlYjSbj2/yy8JvHYMpI3wC7l3I0ZneszcofTiZdtGjoVx62DlsRED/
	FA7foIjQOxlEgixSi445fcFaSsMg6PABTCSDB4aeHbHKGXU2OQ6Xg4zKiVTqLTihz6O
	2rDaQWVKAWWHVGtB438s5NlM5v5VLIeQtH2FTrOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659810052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dTABARqo/cDrErd8smKUllco2sW9dRn+G2LHzr6QVfA=;
	b=kolBvyzwpqLb9Be75nxfRHGnWSn15iIt1/MmCCW6HF0ywYoSg2wi1/bENPlGnSsC
	L6JJzH5BuySPilb7IN6pBLmLKw6iCl826pP3gTPNjH/GfMrzFyPEAkPZjY2JTsmodCp
	MfXOPRsMaMhQlY8+aT+KxXrDZQZmUjz+ViXF0Yts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182746379ad-6efd5dec-55a5-4b4c-9d26-4aeebd142e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a8994263fc9650dddf9920146dcdbbfbc17070f416ca16c53512302238a872e4
Date: Sat, 6 Aug 2022 18:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659810052
