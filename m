Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6C6BA2D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736448354; cv=none; b=ZQNkwXGr/0LZD7wf8e8kpOSv+Yzpe9p7YaW2/sPINy7AA8+Do/WvAT1taRA1FTCidnq94Xl8S/M1j6iMo9bqeBG5Qly8CLHC/uRGaNsPyFj2XlT7k09hXk+qZAicX2nz9SIyo16blSSzKX7R0B5ILTWCfu07Xd1ISN7eHF6OAA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736448354; c=relaxed/simple;
	bh=DbAU1KiYMXFhRXPYqp252DCh8G4N/arNVyV/b/uk+xo=;
	h=To:Subject:From:Message-Id:Date; b=Zbj6F4lh9cGDGn7yRjk9YBs8sB71q4yhUiuCZ4W6LlEOyhGnRM4hlWMhQt4OQbV912Qpl5CsgADAnVBg8mRxkKAP01uAkqtwweNyeO/VUUeouCd1fSzoYPfVVwJa2dMkrcYDKFZIkqp0F95qo/qvUE77GBERKy0F4xXr3yKWEEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnr8WALQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnr8WALQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A420EC4CEE1
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736448353;
	bh=DbAU1KiYMXFhRXPYqp252DCh8G4N/arNVyV/b/uk+xo=;
	h=To:Subject:From:Date:From;
	b=bnr8WALQi/P82SfxhrqkXCVTsWLuG27vDJ/mMKI2i2beBxZGdKJznaZ41ByXCWOIM
	 vrJUQ+K0akDCSeRkEHaiOjlTDS/zmV4QXexyCLVI6fuHpnIIA18bvWgAy8ZtWJcpxh
	 ocNJBU5csLBXPwHpKDZP3wvRgedWU2KLn9n2i50f3ah+zMgdx+P1y+RiYPySSXk//+
	 O837bhHmWFuy2n0cW3jdKmnB8snQcb/8TbVevg7eyMA7E+4f/VlsuROJvAI9G9uj1Q
	 lHVcZZdqZT2jMEsP3QV7G5f7GtHfs0Ak78hpibLw8nE8wc6SYOwFYc3bXj+1nKtmyy
	 NWycrBaEfQK9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B7E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644835358.7012.970921652114346244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce6c1d28de6f993246b0db2403b624c9d145c96004ea904658ffdd235190384
Date: Thu, 09 Jan 2025 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736448353
