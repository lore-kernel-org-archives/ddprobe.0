Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 991EC4353
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645140985;
	h=To:Subject:From:Message-Id:Date;
	bh=Df7QNhJ2gbxw1mydnAZixOl1h7RFoQKJfqIJZxkVguU=;
	b=BDQBSelJaNrLdXWQU0nm7CuzuguCuGP5Jlwha0XqYNBfwpZngkqej5WSugAqyia0
	SLr5kX3dLdUlSr+irPUytmhbBwupT142d+Qsd3oXnWdIK/QEvPRVvMcTZyvlmRJaTCx
	k7Sjre0HgeZ21VW/Vfd6+++BnNSfFW5itxg9imrc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645140985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Df7QNhJ2gbxw1mydnAZixOl1h7RFoQKJfqIJZxkVguU=;
	b=dp4zvf5I8cpBgdG4K0W/uxlLtrC4s8JUvE0VL8LwqvFQeFPByq9dkVF2X3SLc1r6
	QalAjcl7Rh1N/Dx/MiP1SssYag5E4QxGA2blZNihwjzfyOY7wtr1o11dIoNdRVBrhBj
	I9YaZU5LnaR0/hhjGVeZ+fsNBvfuYVTqiszBNY2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a0b4423-c58b82ea-5002-4904-b6df-14b39995520d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93c12e8a2300bcc7b0193ccfbe375f4d18f4bed79f92c6d86696932e47b03ebf
Date: Thu, 17 Feb 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645140984
