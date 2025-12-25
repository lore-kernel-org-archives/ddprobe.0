Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD817A2E8
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766657634; cv=none; b=IUoZqMWLhxuX8+n6CpNnVaZEHWT0PUy89mosn9rFLJvIQWRIbR5CgS52OCAJrR9Xt2lPFxwrksESBNfnKX5Nd+J52xIh7BLH1bwiVOj6fWK/lI1T1mWd1WGS7NvHbJv5mbeF1OZWLS1zpA1LKvvm/D2gqkTuwP2ukpJekToOQM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766657634; c=relaxed/simple;
	bh=kGjpZyhNdtVqVps6wTLWxR4t+6ttSJ1oz60IqKlf2l4=;
	h=To:Subject:From:Message-Id:Date; b=OQeCDscGbbjtRYeeuxFTzuHFYtPwDSjIqvp5m6EMnfDnzwAF3TV2LRnkEzMZcW0E882Hg44bnjHwdLIK7di0RZypByFyUjXnF7jzPxoCDtuiDI3QPiNAxbdCEaeIA2mDqw2xAXkbq20o5yAPyLMlR54TXdq9vaoX7sRiXFDoPOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nq9lCHZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nq9lCHZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C61C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766657633;
	bh=kGjpZyhNdtVqVps6wTLWxR4t+6ttSJ1oz60IqKlf2l4=;
	h=To:Subject:From:Date:From;
	b=Nq9lCHZvpFVt9b6MTomhjYS+KYwO3/B5Zdgi8qB0uNHhUqX2rfn/xMcm7dFSkxCTM
	 RWiS65qq9eCmERbYiuiYcIg47DcrDwG9kMXiNCOr+4eYE/DVaRP2da+yNaxwCX5X/3
	 EL2LQ21bn6UviJVPiv9cVD/5mrKsUhZ/siy7VYaG35SOGRyhwPp2z5CAp+EyKAWx1A
	 /kumgTXHg4Xsn/yY2Ex37cv2sp2RR4h+prGwKzc3HE/tr7RhkvU8fvvqUyjqPQ1KbN
	 GUvoTrBJICfqzlYeBhu15rDzTnkGk7rurasozFAblSaGYVppwdIvdWP9HqXlJZZVb5
	 2XLRXzOs8E9Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F07BE7AD42
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176665763357.23459.7559653530176857677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c145df099d48c2f0cc60e4ddcb87197064120dc53052e11822fefe1a25242cf2
Date: Thu, 25 Dec 2025 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766657633
