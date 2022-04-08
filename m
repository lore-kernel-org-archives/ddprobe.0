Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E9368
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 02:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649383318;
	h=To:Subject:From:Message-Id:Date;
	bh=As1G73iMj3FsUFBX5J4Rm1+sZD6OslEsS9Wu1zHPtoc=;
	b=X1G+u4gvKl1SyzPpriDeKmYAsx0EQiPtxuZ4eyWNZmgFSjNTQW3Ax5DuW350HrBU
	M6u2Io7GOBH8E0H3SjrwOmqlgw5yUvFJ8EA1b9smmfACQqzN1Idb7vAqI3C70MLdGs6
	B5vlZ7Z/zZVZIg+cY4o5xH+Iqprcq5P1Y+ZtXs+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649383318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=As1G73iMj3FsUFBX5J4Rm1+sZD6OslEsS9Wu1zHPtoc=;
	b=i5KMEg1hdbdyEck1hbGahuigac/zgW31rR8GK9f0sj6MdTHwzEJGikD/f/UG+EyY
	9JPeC5+HDA7p2otRBvywGA/+XSiiFIPSHdBqczGJ4qYmcEMjc9cPKeXQd+8JWJpVER1
	X4eRuLYm19WA04ZUq7d/pyMNkdoboNUIVp5+fxOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018006e8234d-1eb49c9d-e701-412a-bc56-c76b1ba04721-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08f5c899c689093e82235ee95ceec9936ca3368b80c005838ce5d2fb4d1e270a
Date: Fri, 8 Apr 2022 02:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649383318
