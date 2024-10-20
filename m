Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49C4437
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729413954; cv=none; b=id7Hp7GQD4pVV8FdEnNquGE1dDUok8E5OxWHIpRh7DevkJpdooyoFMG9ov4tpguriPEn3baICbLMBMh1cvsG4Yw5OFAQmw7s8SUF9rMtzsQbssPSFL+Vk7LtKyqgI/Uh6orOqr9aj6FUrS3kWvr60/WDqTpKdkD4rRJ0HCjinAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729413954; c=relaxed/simple;
	bh=S8e+tjIhgAP2nIeOnWa4RfJQbeDPrZzJm1GWQ/aJKgw=;
	h=To:Subject:From:Message-Id:Date; b=DUyEv2kRxlnEUZ954UBdqGPAt6KaXzlMPkjhF76Rb8Qo6C9obIDCklKbQ5yufwszGwXA5hxu/QI9GvoQA0kx48r7jDODoxh7UcShCO/ayDCFREj/6uL9O95lWAmbv3nA7QOzWuuDSHlbEw/CahrsxbWHfMxxGIRUu9xoWBkKSmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7XfjGXs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7XfjGXs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B586BC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729413953;
	bh=S8e+tjIhgAP2nIeOnWa4RfJQbeDPrZzJm1GWQ/aJKgw=;
	h=To:Subject:From:Date:From;
	b=h7XfjGXsT7o1UDsQNBy7m/kN9TZ+Be1jASHA/Z8TH16WzmtPzOC68/FkKS1hW9tBB
	 1r2dLPSideGa1RZ3OzNPSZkGHMqV9fu18GpYad8fvCsplJ+Oup61QUNBFLf9G7UmC1
	 iml+DvGYPFWxAI47K7UC2V2+UGpbRoIYq/iueAwGxXKQwr73gnu4q4oZNE0KADXIaO
	 EnWmtVkz2P0mL0l2l3KK5wI2Jblep5CU2ByAcp8rX6O7woGJg1ZPaa40PAbt11AfD+
	 RUALsuvC7s2eFyleCYf7wRCjMX+PmY0gozd6AgV+r0iB6zR6H/WInndpLXTNgL9Nzt
	 oUVNbTf0QdSBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960A9D3C92A
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941395359.29139.10885483915508468994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8c5b0dd03ac2ea67bc6ae56ae34d6c0bb356533521cb8b609a1e489ced25db
Date: Sun, 20 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729413953
