Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BF54350
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646691384;
	h=To:Subject:From:Message-Id:Date;
	bh=vDfGOzIj1468OgPERPs8yzVCj0Gi4g4gDaVDHgAe0+k=;
	b=JMZ9rZDojAxIXOm5IZQAjMz1MPaA93Jyywpgh/p4ACzW79DTssMPXG3nyYr0ha/M
	eWasCoRZKHhnITZ2RlKPK+6hCuKTbv6i06KHd22l/SBHuP1vdHaCOxQvEFJtc/xa3vK
	qG0SSrDWdzrEctZcLpAMzu6wpn/2/qzoJ6MZPhHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646691384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vDfGOzIj1468OgPERPs8yzVCj0Gi4g4gDaVDHgAe0+k=;
	b=a3f4Z0tecy82cppJV0lAUbsg76HbgVg64GG/Xg2+HxxmKlLMnKF53IS51zsEFVhe
	q2PN43M47TJKvkekgsI+jlcVaPUS6HOeTLH4OlqbXVVqwQHUsWchHxleMb0ty1k03AD
	I+ZLlqwa91mvZcDZ3anci/hbUcWQNRXSZayfFrik=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f66747dd6-50c9864e-371f-48a4-a03a-11089dca2b8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0af71a7f0f9b83df4db6e252cf152fcbaa48a9f49f5571512927b349d1234ff
Date: Mon, 7 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646691384
