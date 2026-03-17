Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6243E3DB1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773767093; cv=none; b=meu6RX0SVWrDdd6U/k1zHuCSNJKH6z2TTwoFABGc1iuBl0Zpsqmsvu3cYaLJRNn0lZqHMOI8viKThiIUAzmi+KW2OBlh8ov80dlCeeEY2U4bgAjM5LR0bu4FdAWPjZX6yN/KmXCvvaax65ExDCmkT2Gsvp9cZOjDqsDxun+qcXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773767093; c=relaxed/simple;
	bh=9B2O0C/1GaOQyKNL+KQYzFJAU/OLAtEI1+zFkoaC56c=;
	h=To:Subject:From:Message-Id:Date; b=dNDpB6Kat8421V8Rks/bMQrmfxCdhfPXHbLrZhvaBhzwU86S15x2p8ovU/YSjXnhmKZq5hUqvRL+TtKcj3sH3NAq2furE5EH3DsDvNVnUpOtVMQoXgzTc7eXSE8KafGJB3BdwgWVcDiRxb0qzVDIpsl0DUwtUgY9ufwrRipyIx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyfpHxNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyfpHxNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECF2C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773767093;
	bh=9B2O0C/1GaOQyKNL+KQYzFJAU/OLAtEI1+zFkoaC56c=;
	h=To:Subject:From:Date:From;
	b=cyfpHxNeRFrfhbl3lQxXG4rxXz92+vbGF7p8SXWH+18/BGdEQVEa8WF7b77jTlSps
	 4i/dRk9coDbAxEMNq+C9JwKXqA6JIWdvHT+Ixj9PUrkwk3a68oHmSkhreL6KuXSzNz
	 yflyHmJ7IvuKeAJBNRgomKppsQIOhlPYaoiKOP4WTiymD7U3HuoUVLFChH2eQctzJI
	 XaV8BgHlG3c0VvnIiYWuPUB+zZ3OMzm1e6yYIsyFYiWUDbDk804RIsyUuUajl5sjTL
	 6tzoQYAknXIO/YUqLxIjX6AZmN5a5lPv33+AtWWSU7NVfgnV+vQ3sN6CkKe+nkjniH
	 rekY5DpDxHXmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F83DFED9EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376709357.19980.3806836841497133189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12eab4172a42c61501c4c2b988f77a231d10abd07ab8e05ee476ad02898cb8ba
Date: Tue, 17 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773767093
