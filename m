Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3A292569
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 17:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653412799;
	h=To:Subject:From:Message-Id:Date;
	bh=guCwg6VBZHTQfJL2WMHZlkAWxlwqW/JUQcIj/m9WorM=;
	b=EcPaGuioX86jYKRE+N3RVwQTPw6w4lxLc8BLT7PSkGaYhEufsJdgraI1/fZ3311C
	urR8XNcAvGgzVAW3IUnPRqPB0BPOP5aEx60url5525SbLIvQKxKQCcAvFrH++R7VRwt
	2OX88RHgM3cRND+LIihyi89CEfLL3h3b7R6ZC5Kk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653412799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=guCwg6VBZHTQfJL2WMHZlkAWxlwqW/JUQcIj/m9WorM=;
	b=GXWFD/xbdbefCxq4sGgLRmqLHAFTyXYncL7RMeSEFGEXkpcJRE99PK5kBxlJzcMQ
	lcJYAMHJTvhXMaudVGGOxmTTHD/wBNy/opgfvawZRMlzSwWi00JFZWbILH7Y/LoP7ux
	SDaZUR+k1ZHJuhkupoFweVYcJXs6yrNyMUONH4E0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7152327-4fb8e9d2-cfc9-4dd6-a822-d188151be237-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e2cf289ebb08579e1e470ad430714413a038a427d078df3f0e1e676fd37cd98
Date: Tue, 24 May 2022 17:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653412799
