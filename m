Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D6E421A08
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783327715; cv=none; b=YaAJM1eBrnOFAfXW8kPvF1KHU9eRRQQfLTDwM6BGLRtrGSsW0HgLn5EGrz3A+rWAemMJ3sk5ycR9KRiDo1KTVNmt9vxP83grHl3DQtOYR8xIIQF1moaOzN9A4Gh/w2O7Tg4loK6zjSuTDBz2ZhDSt2u4iP66oU3OSaVAf1R8jEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783327715; c=relaxed/simple;
	bh=nW/K7hrrqFjoiPhKNGRtlbXJ4BtgI56N6j4FXMVwg24=;
	h=To:Subject:From:Message-Id:Date; b=pYSbq/NUPfZLjocuc02iH2jmtiE6rSi9WAQAp50ADm+HkQP6MrvW7+QYvgR9bhRPNRV6Cgsp5iTjsj7+Lvq5OZ0bdmblCmqs8ayXNifQ11vvxLUSPka5RfXhxcyDau08KjJSRC+GYCI545PgnDPlPW35Ck/d6YGLBFGTM1O7VCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsAiC7wN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsAiC7wN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03CBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783327713;
	bh=nW/K7hrrqFjoiPhKNGRtlbXJ4BtgI56N6j4FXMVwg24=;
	h=To:Subject:From:Date:From;
	b=NsAiC7wNLPm7mNLqtFgriNOOARDb3gPQFet+hTTNGTTSwDRTz4zt/s1uMJ6EURCCa
	 eUqrs6XLoJjxSULD/eGnEgecboDUgrmRkoVAOFITb7pB/RsvfLzIrPk5IZUd2hRFAU
	 m1AoIW6iJLFGfWweWabXkxkNoMkC6++p89qt+XrtpYVjVRsAX5A4LNfDpA3m5zPfV8
	 h5j3rv7w+D7tLqo6MTMq/Int2OHvw5bpzfaEPeWa/RfYNimu9FMernu6zss8y1fzwH
	 zuKEh6+DZNNCfReiI2LgslhxZpJIcX7OelAUjrbNy1w9agmK71NWnGRi9DoYScVFax
	 YwLW52twEGL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC258C44501
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332771369.6281.13652804777134540434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4697ba47923de00041bc466a9e2dca2778e8595f8248ea914a51826827bef519
Date: Mon, 06 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783327713
