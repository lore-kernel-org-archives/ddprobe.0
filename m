Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA60966C5
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648061485;
	h=To:Subject:From:Message-Id:Date;
	bh=281p5gFrFNJNxJYAmYH74hDGqlg5yWH8fSb5w5g+bZM=;
	b=BRWo/6jlsUeFBdrEb4SWYyGw5PKJwtTCHEuWxEqR2YH6MSp6wr6ea+vXJJFX4VXZ
	Mvc2GcYSEfDqAc9l2IkLgHES9W3fIfAEOQ8zO6e1xPutNGGtff6LibtLEhuWWiww24t
	KpNjz8YxjpHgv8bq7JiP2kzgLLsh9nsUdQ1dQh9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648061485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=281p5gFrFNJNxJYAmYH74hDGqlg5yWH8fSb5w5g+bZM=;
	b=fBH/k9A0WeDHOHSQr41fW69KdWYlgO4ucCfIWgBboUQdFYTGW9N9RK+ir3dYEilM
	JOytVJgOj1ADqawecXV8eFxNbWaZTfi+EcbCkzQdO6RxDRIKKxtjBhATae+vJYqLDRa
	nlP3aKXpqeSCIJKhu+2k5T62f6mlFTLBppe8FyPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb81e8efe-3a61f72d-0d7d-470c-9619-59d32d8fe22f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ca4bffcb869f595f6240148bb4e69b4899517d3de7ca69d206cfbbc55ab94fc
Date: Wed, 23 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648061484
