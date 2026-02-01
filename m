Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF011A0BE0
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769934834; cv=none; b=Rav7Ld9HkSPN9B4F+tQuojrhHdQAmsF5rZWIlD72WQFE9xSf/9xhT43OYY1qL6aDiTjKA0OmvecFJqHaWN09Oiit2sFSE4jVAqU1/1koIeTCwBBD/s2GtMQUChjzGdc1xRWuNAljYjRSjF8ajBvwgACLi+VN69BTWfyu9Y9AdeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769934834; c=relaxed/simple;
	bh=vOezSk/JuKnFwFcvAPLNw0zsgX0OE8QN/vr2LRqlNkI=;
	h=To:Subject:From:Message-Id:Date; b=T7jyr0yZEYWcmUcx68/0Ya3TGLwP8bU4x8XQTuWaG8auEp6feFNNLW21Qk7NWyS07GR+5KrP7AR5G1xFcgvu1QK3hFplpGZs80tlEfkcLFaXq49tYrvdATm/wRH7dqLQ039TfoHqGSue+OnCmo6OCMmwYfizBg7TZBq2EsviUNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2alAWqo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2alAWqo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB8EC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769934833;
	bh=vOezSk/JuKnFwFcvAPLNw0zsgX0OE8QN/vr2LRqlNkI=;
	h=To:Subject:From:Date:From;
	b=n2alAWqoV8WSC+b8t6Z4dFe33KfqkvjP97WDHV1MXsiPVdJk6EfYtNWzo3Z46eflh
	 oyfg+A7reONiU5YlyhAVYlPERFkO+FROknIpCyTIvJiSWj4BgFl8P7rPXO+iYkLwmO
	 xwjor5qFAgdr5FH2ZPDTyNsnRwM/KUhbKCPtwQrHtEZ7JGbA5aPaSONZ33MjO2Pcpd
	 fxo4RVSlEGjy7/8Y3BqfLd843qWm7AXB+quvDRNH0iya32zZT2Outyb4T1X28BNwKw
	 Y0O/nC/UZe/n82r64VjYfugiJB5IiIjsdaavhpSmBSHLQLYWUm7PCAN47YTXbejUDl
	 +GHqlYVd9hORQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D38BE7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993483357.21971.1555564250695758356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69d7b159332bfbc4fdbb502c461d5c4e41bcd4bb6ffc95d855b51fd2dffa614
Date: Sun, 01 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769934833
