Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3645526B08F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778306854; cv=none; b=R1kx6Ag6V7xOu7sp3UzbjaBbmOVATB0UFy7GAr7UofhWsNofhop+kDCHyncGywmS5TBLarwoCLy4MkEfqzE+fPjNiIHTSAweCcMw/x+K1PPbBd+V+vyhH1bsIsYCDlks9tZRouxG/+PxYdZHf8jVyt0BO2IdvZy3oJoaHgrckPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778306854; c=relaxed/simple;
	bh=M3KD4XB7cydLo8VZbN+AisRlcUTj22DCIUYZ2cB4yYI=;
	h=To:Subject:From:Message-Id:Date; b=MCaGp5JEo6N45q2TG4wno9UG8TgNDpg2OB3SjDJ271jF8t7JrZ6zE2A3zpIS+To9cj8Yd6f1+KbwBsqpSZ9JAVH17wNt3jF0YucdjRA4A0VLHPHVi1EZW3HRGSrCu+473jhxqlq0zSeKaiaq00qoETL2gVthKMdVGZ6/SXBd/1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9wlKmUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9wlKmUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EE0C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778306853;
	bh=M3KD4XB7cydLo8VZbN+AisRlcUTj22DCIUYZ2cB4yYI=;
	h=To:Subject:From:Date:From;
	b=F9wlKmUgavv1EXgu36ykhTR8AesW4Yh6IBSE8XK2YAAYpNKnEQEYhUkPVL9PDgiDO
	 Kr/MkZ+nu+drKMQDeorE3KS//N205Yb+Irgrtn48BRMpEDf+8McPCfNF3p/HKbFvAX
	 KmuH21g0fNMPi9H7wvLVqqiKgD8vTt7ZPlK3Dt4eytBrGb+1Qvo4VJ0VQwqusCAABp
	 O5ejdpmrD9rg4VrGSER2umZA298EBVkdruNUBd8LDkNcfWFV0AOvyYWvADcyG13d5m
	 WIhzSfw9Kwd2v+1WDUxbU0e+h0WxWmgRx70l+/NAfGbZQy3pDZ9fxFLoaTtB2bvjb3
	 wco5PfbU6MJSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B129DCD343F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177830685369.20734.11989724006332114060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bd759b31aab26e85fcd18b47fe5f6f376c00f553b91c5c27737d22101aadba
Date: Sat, 09 May 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778306853
