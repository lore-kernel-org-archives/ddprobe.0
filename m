Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E57666A2
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647990685;
	h=To:Subject:From:Message-Id:Date;
	bh=EblDNZp1HtwmDew6GB3AXfRWDC5bSDGzm3XyHcDQGTY=;
	b=L552SoHywYKZ2J6OjSGtolwKQ4kK+ty3fz/YgHw3i4nFwmWNPi+v7IQTFAPs6O/S
	H6qlHHFf1xaSj7Pw+XLqUHAz9yGXZzt8n5i99ARFl1tsxzaFgQOBD9ruMKZP/Iz8MMs
	/scd1wSO4dh07Qg8d4An0b9ADTCzpoyNXapaS948=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647990685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EblDNZp1HtwmDew6GB3AXfRWDC5bSDGzm3XyHcDQGTY=;
	b=FnM4k8OKoVEN0LyygDNbGqrO0kJ19HozRe5CGIxF52iPx4EXonjIneopwWyRWHN4
	kbpHPyrHxzbm+nQEcL1poh71emydghY0pTa3FThkDSJ1vbQaSSuMKAjhSUfATNaUXDY
	TGKWkJ+AKpkz5HTeaJlgA51atYb9r7cxPWZ9p1Pw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3e63c5f-5570d401-5275-4009-9c34-af62c2ac4162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc60bc03fece8f3bc782eddbc0cb12258820f25183c95a15ec4982bf94dcb77c
Date: Tue, 22 Mar 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647990684
