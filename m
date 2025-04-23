Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3481119ABDE
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745392794; cv=none; b=B1YnYcVxs48ZL+KFx2uNXfaQf7nT8sva5rIoPwz22yO30uf2DRFTs+avzLR5TBapviJhPcRTziz52tMXj8qyqAZKQc5u619Nj4R/1JjqhNDA3pU3ax1N4MqDEILM55pI9cS3wDtzP7yajGtzq/dT686FbgCiEPSJ25uA6QnYPes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745392794; c=relaxed/simple;
	bh=pVLKWOp/yv16tXSg2Aq2vBSKff/tHg1RX54cYfsjbe0=;
	h=To:Subject:From:Message-Id:Date; b=XjkK3p0xjgqMKhBDIy+ei2Vrj02c2m1QNzyRfsME91p3PXUKQYCfWMUowPw+WwxLG++kZnbzBhSXdwXwf0miIwQFqjeqbgu3jzJlB8QqhScQGoPxU2aZx54G01PA2V/jlA4BazjvMS0F+fqNNuT9tWumAOhe7rhAj6v1It/p3RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOYf0B1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOYf0B1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A304CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745392793;
	bh=pVLKWOp/yv16tXSg2Aq2vBSKff/tHg1RX54cYfsjbe0=;
	h=To:Subject:From:Date:From;
	b=ZOYf0B1+jvFrCJJJJinxFL/ikqINPGtLVs3Qa9ihlDRoPntSAIhTLUg6MFVMG4fz9
	 RxW2XUPJhgufNLnX8mP3qIsnV730Ie1pn5BkZrKwM4dCfH7YVCkQKgAvu2zglZwDEE
	 Eu+SJnrv3illCbiIHOjsG0FQdqVBk7wEOxrVctWpkVR941Vh+Buo1SQs+P1whzpHzD
	 T8GzbdyPOSmStHJ37zLAJMEKXw4f7Jd9Mhs4m+pwRl38/hU3/Aug/L/ULaHZ4Kg2B+
	 R9gi6UHydF1Kf0TP7AwCvhxes+Y4WqJ9Spyqk5l6l3JYtSBe2pE19vAsgHUNgR8wO0
	 7haASrLMSMkmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B1C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539279357.30254.2863389018229647455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309ef836f4a0ab4c373ba23ca9509e2c672b59d267b725c1df3174989c222c47
Date: Wed, 23 Apr 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745392793
