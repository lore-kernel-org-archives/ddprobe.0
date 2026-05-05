Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1879B392C28
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777957654; cv=none; b=p36ocuNg0wx4i+nagoJU55N0UxCdSsAsbX3NscbV6qOQX6cU8QFnU4TrpC4Xt0akRoUhr7D/6XF9Zn1LJNFRnnfPeEZnlXF4xERPfu3IHYOdkggIBMN43ojSXQ7Z9BdZK87lpeNyvHmdwAnN9WbPRpEj30suJ9EjTNmyONMhJQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777957654; c=relaxed/simple;
	bh=pB5TWFWZOynaYD2MGqPi/HLkiwHevVw/B/EgnL8Gpiw=;
	h=To:Subject:From:Message-Id:Date; b=nzH8VBbcP8BSXrXqcnsQowzq7M9xC+sRmoIe4fj0EFN5NehQKeYrlGwROUgqNDv2YMdkqyXSJd+AuMN0fDSKMuv4yakV9dfsJStCWwGvvkyRF5ywsvQFe6V+VBIjQ2/Fy/dtmI/6il/avqpWxd+SN8MeNRX5JwDQdLf/zZZhWYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsWYRt6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsWYRt6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B526FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777957653;
	bh=pB5TWFWZOynaYD2MGqPi/HLkiwHevVw/B/EgnL8Gpiw=;
	h=To:Subject:From:Date:From;
	b=bsWYRt6O9rzoy8NqHe1mwSbQZIIzTWl9cM4oKHa2grJKlZOblCQD7VJt5ln/mCerI
	 +aqxL4+am3JaRCN6ushs8DQOLsVy9QIdFc4j+mjk6/pWOkgrrH2oYtQiwlxh8IgKFd
	 iPJvdqudSjI0DzFnQqOXvtgb4WdoVA00KIBCN95x6TUwW3iSItPijMQcCTMB0qDrgT
	 lxMNday5FNOuaWsakWmHXrQc4apcyR7jqB6mMQ9KZ+ElF0JNttp3UiOY89oI2bM+FN
	 KNPFPpXFhrOPX7EE7NMHwLtYy9mTptGEpB6jIkHQwSK10xFBgIkMIWGH2IMFUqay/n
	 gY92v2LS8pwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F23FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177795765368.3070.3229172210496100687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b60caacd65707f1e20a555850fe796d44929ec87947faeedb2444eead47d7a00
Date: Tue, 05 May 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777957653
