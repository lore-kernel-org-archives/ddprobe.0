Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEAA3AC0DC
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773954294; cv=none; b=PFL6xTKetWBtAB3MG0qhpB86SjadtjrsEx+wElOVo3h/RAMVuM2Kistvcz+pwcV2hzQVQXOyr2iNbHo4J4WkTwPGihBPv4J/fppHClihK6EyKebgsd+xl5rMlrGbplVAP6zPzFXUY+SvGFGTRRKsUAiqBsJ8jG216mYjEiDkvbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773954294; c=relaxed/simple;
	bh=8IvSJWUo0kVQgjYGvwP+mvXkWh1RjNGXywM/7ft6LyQ=;
	h=To:Subject:From:Message-Id:Date; b=A2dBQiN2zoG2ukpO2N2xtc5/uzrsBXg+cHo+ODj8Er+nDX/621H42qqd4NQwSRsBzfUS5TtbGs5FNvLai7G/S4bUR4zQKd9YrBt0b1IaI7SwoGwb5SD0YdlD7+0t1radWgkMICXmO5Vg2XwldXGBgTHdMfvBmtsnx9df5fnWmBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMC4DN+z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMC4DN+z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A011CC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773954293;
	bh=8IvSJWUo0kVQgjYGvwP+mvXkWh1RjNGXywM/7ft6LyQ=;
	h=To:Subject:From:Date:From;
	b=gMC4DN+zPv4IRlGjqhYrHn3KcKGpvyvyxlCFRYEZiIqCDzEyEOY3+j4HC//NiPIru
	 l0yGsKnmDuh9Bl6jVUDgh30MlxwcLmOzMgvO8TNka6zMcmzbWXqo4pS7YLBw0zsVE5
	 +GJ4nM4PrXIGIoz/jDa9mvJIa4Rr27Dsx0Q7fL9gt2qF0A+WDsWnTgqvYo8N7Shqmo
	 o2kyD9yfGmZ2lTH/3e0BzoNWrIRV7FNrvLPab6PbAyhbheEZ14HQ+LKKXSxg1aHNPa
	 MMcLKonnClUwyXmV7xWsTccAnq6hMJHS4uCSqELgeQMgzhmGBxj/OZgyRauKMkKngC
	 E5P2W0ipub7Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE5F1091923
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395429358.27299.7477321021409043957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a27e5e57a689dd64c03486cceee375a0fd99dea9195c7d9b9e63c80ea8f495
Date: Thu, 19 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773954293
