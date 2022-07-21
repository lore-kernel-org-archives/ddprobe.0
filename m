Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E47441A
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658443012;
	h=To:Subject:From:Message-Id:Date;
	bh=zgzs4Uc0x7Rb+JzFE+imG6ML99LltwCKMyfAe5LThb0=;
	b=AAlB+TXECUkPfWbw4X7hhhc7LPSrAVv9oDRMuwK2huR6NUZBKWxb/yXbWTw7SwdS
	Pwu/s+2GykzQ341AdxHutyprmV8eUCm/ZYGzOLM4TIeg/Hy6Cygm18eEtjnNbWeuk8F
	hgWiLLkIl/7o64tleNviAgeBRMCPpQ84AESrJMA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658443012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zgzs4Uc0x7Rb+JzFE+imG6ML99LltwCKMyfAe5LThb0=;
	b=YUB7Y63NFTCgEtTzXGt0RgN2+aLFJYnG4IhJXnWRivk8WyOvw8B811jMK7nV9nsl
	HGhCWfyDY66y6a5NeUJTuBqZqv0zVbT3uHIkYcdGmIfo5XDom+XeEHOfwwNLLmlLdj6
	jjEXBjvyhZVvTlcU0uIL0BksQbRAnPHJ7a2Np5pA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222e818ce-80cf8651-6be8-4523-ba3f-4fc1ff966a1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6715e2d99fefb5efae25bb50872fbc4981d6ee1d0ada8f69af9f403e7d81f5d9
Date: Thu, 21 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658443012
