Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7DA10EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646586984;
	h=To:Subject:From:Message-Id:Date;
	bh=ISVeyufujLqy2I4v4GFzPBo57oFhsyioijWPkSFDSuA=;
	b=aYYcUp8F/AmvkcwjONeXNhJyaHMo8Hz7ZUjxSAH0KfFXZCR/FQ8+VsuYiCsZv11x
	d2XML76LgVVGsX/hhe38ySx+CnPlsdxC1rS7+nQysKBigeb9ql8ccp6CWDyh6KHB2EJ
	ZQaPIrmmyAradg67AFEHqJGHUtIXJZ7Q8X4oPy88=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646586984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ISVeyufujLqy2I4v4GFzPBo57oFhsyioijWPkSFDSuA=;
	b=crjJgU/FLP4mUYe7b+9fk/stZZsdijzQ1SG7/8V4r4dEe/pQ0Ucsn6JKLgbmvObY
	W/CyQ38wZ8fmeedW9KyD+CJ09KbcnI8iFCiGQVeKkhs1mMc0nc69a1EbKApqHtncp1d
	BPx9RJKG5gMOrkJzGQAYvS4oyziHwV0+n6CH2GXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f603b7944-72ccef06-eca9-46cb-8781-f795fe30e50b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da9bb55f7d2d0d501889c0b212898548c5f8f33ed4e9e05b2f192cd0f0ce9df5
Date: Sun, 6 Mar 2022 17:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646586984
