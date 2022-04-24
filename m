Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1B9E7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 04:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650773638;
	h=To:Subject:From:Message-Id:Date;
	bh=EYwj2jYYUVA1tsdBLRquAZlLQEDzNPCY5+1I9+oTjd8=;
	b=XIkLvFTGR0Qiy9K9NykBPmuT5C+UXP3IES7gVewifbCUDeHKjKV60Cj58CmVtxxW
	tcIJ7OENEcO+SXqn30fq11abzUFtwHg8UDsGMOjYq3I+M8uFdNZK3pMzQDRAQuk0pai
	/Ycd0+pUuF5DkuCit4Wd8Efe2m8rXfHJ2M7GmsWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650773638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EYwj2jYYUVA1tsdBLRquAZlLQEDzNPCY5+1I9+oTjd8=;
	b=bNdslPEDDDEqYTp9U9QelMr5vn3QqmsJ7DV4zhXJ9QKxABMjSy7MpKW6RxjZd6at
	Daycogjzzx2uSoB8rJpQFy/Hgg4PYYYu1Ta4ApGHGA5X6QVy5VoIquyKj3P0ZojRqeY
	bRbVvAWvcJJa3t4KNiCodBqpV140bmS2HWFEIa8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059c6bcb9-9c29e7aa-21ce-4abd-a7b3-26e34c12df2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceda03fe17c91e5c0632a293786d332600a0290d0e573759abc3d39b6a8bf065
Date: Sun, 24 Apr 2022 04:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650773638
