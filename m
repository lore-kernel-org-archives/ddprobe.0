Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6FA11C87
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zf6GRMcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CB1C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702262296;
	bh=ZWX5EcA4cnpINAcRYtcgxS9BqIoVWTCmNGkr9n9Nvqw=;
	h=To:Subject:From:Date:From;
	b=Zf6GRMclTij2dCHKpGzn5XIZoFf1KVcwd9duBzRxh/atURow9o5W5SAPNzCjCayKv
	 1yE/ZVzQyBGwZlosBtQPyxPzHp6Ohrwc/2ML8I1ZXBGSZtIDoe+wJ9yX5rf8wurokU
	 WKXrMEZO97EwBm0klvETxzMBhZdP16MuDSdfGCMrcPr7E0lQ+vyEzwbitF6nYyB2gf
	 SaBpB4hi+UblXZ7XQB6RWanio7art26HPdkLVKHkKfBREm/IETiC06G5nLdqVjgqLJ
	 VCRjZZpzBfthW//5IFqC/tEeTQiX0ugzfFMkcGWbqhi+53XQW3cW4JIM2NhS7oz66A
	 BmmazOL9nAfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D35EC10F04
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170226229637.24626.4244946509864387094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddb75ba17d61b8bf248121dc3d799d09b8ee3bc0a1a53976e6dfc5fb27167ea
Date: Mon, 11 Dec 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702262296
