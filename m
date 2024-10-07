Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F921DE4DC
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728332753; cv=none; b=g2ChxN64e3y4bNa4mT1c6t68eJmEkLHCQBbRcn6es8N27IFBJbFd/NYt+y9LKb4jmrBmI2El8HOl1+PfPNTQmnh1oQja2Ll3vaa3hBvf6rNfYB7mlXI7QxQ4QolN3GhJtb3WulmiDf7iFKzHB/NQBmQLpmnbEr8UoZzU/+g8Y+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728332753; c=relaxed/simple;
	bh=XhzeXN4zHtujDHipzmEnMuGSI7YzOqjVOJI6+KefV+A=;
	h=To:Subject:From:Message-Id:Date; b=i1mdNd6kOhGJ/73CJgO3Rtm7SL3sKtjn/+2mTb+ESiOzEuy+v4W540ieZUngAuB6AzAxkkBKiw1oiM3VZsnlVoIcy3jMRirxpK3922kYQH2jegXKZoAfGPDeykRF2mUGMWEcXPD+SV8xASukJr8K+WhAIq6bSHzayN8QsEFav9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwfGzhh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwfGzhh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7CAC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728332753;
	bh=XhzeXN4zHtujDHipzmEnMuGSI7YzOqjVOJI6+KefV+A=;
	h=To:Subject:From:Date:From;
	b=IwfGzhh4WLmbew6nFj1+oKGyPbdlH0fTN9Qe/acggdVw82op2IELcLMxAWDTcmLxx
	 ebAFgpVSRAmglFxSS/4JWae+i/2xVwMqTJyPA/IU/L7l8OzO4a8Q4ARdNsnKLHINah
	 tAw2DaTXYAhwo7EWgkzbs4kXiZaniQ/DOUFdtylnxrwMW9tUlPQPBaZQHsGk61BFNZ
	 CPczs53SjdXM1EbQDUp8fPa67MeZw0rkj1lvnZy8L2is2dbnvIpx4K+TDxaw8Huk5a
	 mm4XBd8B5JWfb12gK98MOY4ayRTAN2dAbWLNvnYwntGogqw6uov1t7+OJnqoJuhaEt
	 Ibb+axIOCYa7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F1CC35FE0
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833275365.22553.7203348211764202979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192cefe4a6eeed35d8ea4afbc6b877e809484739d8557be028cf640a7ec8d976
Date: Mon, 07 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728332753
