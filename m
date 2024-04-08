Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5A6469D
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 05:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712552897; cv=none; b=dzMn6ahbTw091A6bGMFIOqaIaZ4z/MJT+7UPy7PQ6Y+6qX5X4sqFJBMEbCj/PzIfVqCU6SzZuDH/C5+j2RwAnCBU/fpsMqzUybxPUOVWkxvPnEyRDbW3ubNNZAAGTTkkdxqBxXueV83fOoRRc0jSyf0sGIRQ7cGYkzEKBZXHlqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712552897; c=relaxed/simple;
	bh=4LvGEulu8g8wdfRO5vC4tmU2ykfo1XtQNt7jVJ6CCgI=;
	h=To:Subject:From:Message-Id:Date; b=IrzlzTmWk1vgD0VrjYwa9XPIQHGraUiEeFE0eh0AocUchScEp4f7kDw/RqzTlu7VAmsa22hMI/jhzLl2NfNEpdFFeql7KcHF1vTyQwUWyrAwG16oDgpOrldWDbQj/ulxolD2GimX0ykkDmzt5gQgZ7D9HO7Lb2tD/M5le8/C0Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMGWJIEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMGWJIEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 141FCC433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 05:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712552897;
	bh=4LvGEulu8g8wdfRO5vC4tmU2ykfo1XtQNt7jVJ6CCgI=;
	h=To:Subject:From:Date:From;
	b=RMGWJIEbC717foZQ/3HdpUTyUcb7mNt+ul8m7TYowTwSSY4Yc2CKth8Z69ZX6oWLt
	 uCsMcqtncSZg8emmCcQiZP+KWFtBjTLSnacml6E8LjEkx8AEbhOUkRLDNS6BltA4lY
	 SCKuiIsw3c8D4z4i4GzAi+C5u3q2zPfDxAh/j3dnkEGRKflCTFDcr2vijtIyHWAo3N
	 hs3Xf0exNwDLgwWvwmP2FyMWKSIKs3uzEJHMUfDXiD8BJShGzJStisklBLBJSYHfvq
	 BMzGfFwI7/8qvFMECMJiE+cxxcO3xbHyucV7xR99s3ubS7Hcv8PbH6tP/xcGwLMbgd
	 3E4Fc/e0v3rBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CB0C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171255289667.8834.3424504442835355481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4ec2075a226da9400b09a6755264a7d4ed2cfc9d06a8ed3fb8ff039c49e700
Date: Mon, 08 Apr 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712552896
