Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFFC7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 18:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655316900;
	h=To:Subject:From:Message-Id:Date;
	bh=1JhXlvdIaN9lAWovdHOuEwvGtVpzwIbjf2J2iP8CKMw=;
	b=U86ANC3Z0hDCNy0Zq5Lwgg+eyEf6Yd712lSf84qFV5QNvQ04EnaT5+lDU9FqxmaL
	PBGmKRoVhvgI3qO0mIrduO/rurhhGQREngUqf2s7o6RAuDrOGZZ4zO2CEsUE0c382aD
	jq9PenrL6v+1yAuSFXpL9ss+mjAJUcH1DWszF3XA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655316900;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1JhXlvdIaN9lAWovdHOuEwvGtVpzwIbjf2J2iP8CKMw=;
	b=FTBaxy2E31puPQRIPxW2XvpvE1xl6N8mEHsYapIpbfzc3cnKSmApFZ2xq91J3d1P
	NtViKaogTlDzUWub3XkmFBhYT3F8x2zfdrJgzbUkgiLDd1dN/5SA/uN9salUjg1N67u
	cK6a/xD7oJQpxKZdaouGgFrS8IuDnA2w7IBtDYZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181689365db-0f725f6c-929a-442f-ad75-aad48d76361b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac71898a0fd3fb2f84acdc2580ac0b2d166f9c9a797918a96e0cf66b44625479
Date: Wed, 15 Jun 2022 18:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655316899
