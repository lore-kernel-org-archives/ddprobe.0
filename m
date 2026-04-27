Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142A5213E89
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777253854; cv=none; b=nhbMIcu1xEL8YX8/X+AYHUP0CKh7d9Y0x+Umc/rnZ+NtFEpNSM8JhH72nAlqjWQCUs8Uq5vVDQQfpSYwX0e1oqzUIpYjpoZY1WPTQVpzKvllb0H0xKXetF8kBlqY09i2ssMBY9gY4bD8sv6O41SIM9eO4oZlJx2CXARqlPhG/X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777253854; c=relaxed/simple;
	bh=gy9VB+96mIQS5FVPoMUckx/JU+400Oc5TFzCFMf9YWY=;
	h=To:Subject:From:Message-Id:Date; b=gMaWTXlfEWXM+QpLJmsEdlSixAYiRfAvYm8VMbFC+idDWZixGBDxrw6RVlKYUVFu56DUDiMeip0USL0dexzuS3njMhMOnqo1+fDz8FN1qBCAOg1vjjeS1U5zLktEiB3sKe5iNDvjTHpf3RgS/DtzQwLuTFu/+eUd7hpeijg9A1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf/HRlsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf/HRlsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3407C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777253853;
	bh=gy9VB+96mIQS5FVPoMUckx/JU+400Oc5TFzCFMf9YWY=;
	h=To:Subject:From:Date:From;
	b=sf/HRlsf9rsHH5gKAe/uWKN8mR+7mYFpC/2+mYUFjjZS9rD98hwABwgTfYOqx93Od
	 jkSVdv9F80IrvODznVckDXbdUvecgD+ev49Bg5t1L7+8xepNjyuT9tYDmNfB4XC/oS
	 3DEbOow00B3dMd/UvGsJaSfyKgd2j8EjSCBQyaguF9j1JrdMIj0KhamF9RkyhMR1HS
	 047ygVZ5BFU2lF6QGJ3x+6+PICsRR0EX7S9QaiDI2RSAf7TXTWrrVz0aqtE9t6hPxl
	 wbNn/uo5WXf6cDOF3WShB9vmXULLF+uquv261c6MvM0+ttQaMys/sXYN2PKpJRoccH
	 tpJVO8xd01AGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDCFF885D
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725385370.13347.13478440472706885650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889408ae82215d608972246fd17e2b18ebee1125d9ea3de394d77928d7195425
Date: Mon, 27 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777253853
