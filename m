Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A444A31
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749314994; cv=none; b=X8lxdU7FuI//ky6EF3NyKT2BcdxztYrtL4wwrvQR66d3JtLYuuo0Woq9o2jX6HQlBphuA9zg8JxQkQjcI1NfkJ0UJi+2RpMDSVEV0u4TSHpdfrM2VeOiTdUJ88rh46+mps2sM1x4tBR+o1mZu/EELD+BCXVuTpU6Hg2RBrBqke4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749314994; c=relaxed/simple;
	bh=RIo2JYNsLMfhByi8cYheRX+oOb3fOs5ct3eRQKYhVAk=;
	h=To:Subject:From:Message-Id:Date; b=r8SLjsJqafMgphzNO4y5KhmQHIQ74quf5DeKhpJKuMMbFWmHh4tDrY/2Km3UiWzq5gTnrpSdCakXZlnzGNm85TfBMDKjudQ3vwpSfc5uhrmvKEeyaRfILlIu+YKlRH7ZAro8Vtbx8lkqCMyF17YaWhrByDyh37jVkY3frkunDws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVydrmt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVydrmt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E36C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749314993;
	bh=RIo2JYNsLMfhByi8cYheRX+oOb3fOs5ct3eRQKYhVAk=;
	h=To:Subject:From:Date:From;
	b=RVydrmt/WNypxOux+q+0KTAhZGVK4niYTBwYdotFLhig6/JnfbctOVmaFdyviktxQ
	 rJji+/W1RjwwbQRTmmR4+6l1lsH3rm+Nc+7N1vryqjOaG8ms1gOMhZpNknOTVh4euq
	 4tPj9NzTwUPlxtqGIZijpUYwLrh2lI43FiA6ooAzJngGFoYcutJagL/7CluLz10TiS
	 IeZN/W2mwFCnzvxhVp9LDxXwUq76PnvMiXbdGYvtM4knD+MaPl/9ivSq+PFgkn/kxw
	 ibYdjIJO6W9O1oi9uV1UjBdaCYTYzeF1AhJaKQ3v8CXEJWlSCRdYiDk7Kb05oEy97c
	 WweRfx619kVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49B6C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931499365.17899.10899720192377094034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21c45a2559154ce409cf2d54b1bea446698462f7d550b8d2a26ddec2e5e1e780
Date: Sat, 07 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749314993
