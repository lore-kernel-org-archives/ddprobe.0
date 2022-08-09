Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A38DE443C
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660063253;
	h=To:Subject:From:Message-Id:Date;
	bh=t9eAdfAy+lPPPtmve40v8ytPZhWwz2niV4oHxPEPCTQ=;
	b=BJUtcqi58D28QLp6N7KAQlOKHpOAAe/hiYlnFeSkq/wIq5Wz7QK3qXNZSNJj9R2N
	LK0Y9EP3vG6AUDpLiCVFULGRkOqyn9fNUnquNXdcL4zSE8oZ1TV7sDyhgGN5JchOwkx
	RuowiLtHr9KyEKI7qrEUalNR2u0Hw23jvxgrLnI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660063253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t9eAdfAy+lPPPtmve40v8ytPZhWwz2niV4oHxPEPCTQ=;
	b=Dtrxdpmscsg9Qruf/5ZTp2oe9SG7VHS9RimDt45rloaE8+U6UAfTOqFZkBvFJSnA
	iemkRfh3lK9I6uyQhBGymPObU7ZuJcV6wyhvOpQulqebJJeCbAtP4YMGgY/JeKoNxY8
	VHBUux/AAi5TH7lsO6WFGypD5Izv0aGqzj30lumE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182837b0050-59b695f6-7153-4586-8c3d-1c39250c74bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 57737662081ed2bd7fa664d99bd8e415a6a667f25455ed0b04f78890a41d8a49
Date: Tue, 9 Aug 2022 16:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660063252
