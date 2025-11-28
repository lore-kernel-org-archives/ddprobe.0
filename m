Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13994238C33
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764352974; cv=none; b=QVFwbx7ahH7m4wibOwVgePncqtPdBBl3jxbdGagIH1797qUoRlOP/NX96VixCp3U63+5tOlvBkRlloG9W1M6pQeOG54QHIwseqS2kz/OpQlj+qFuoAkSOb/YJg6MK32qnAN5wJ+KyWl6M8D0lCy0KyCR4KdIAcUrnHP5cD/Hxls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764352974; c=relaxed/simple;
	bh=s2wH/gEslozkX0ayDvWQ55T4/PmRLgSqjDGKf9r0H4g=;
	h=To:Subject:From:Message-Id:Date; b=Zk/qW5Zcl1Wy7hY0uRilM8ilEcNZBMy6PNG0Edm3eHJaK6YRwoXWeF2k0wIxzdxL12qzxffWVFMWp92BKhTRITSRhlLOwGIZ8MeTh0XTiBmAj7IGohkZAHkBrTvjswR5U5u6bpLjoX3HLgtVdN/5cMMTFDQpim/B2Veoqhqx/oU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4ylDGE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4ylDGE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7242C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764352973;
	bh=s2wH/gEslozkX0ayDvWQ55T4/PmRLgSqjDGKf9r0H4g=;
	h=To:Subject:From:Date:From;
	b=q4ylDGE/JlFMUfnpKvn2MTdTQHWMRl4j2bA1fjJTf/RVdd3UBhEY7sl6QET810TZr
	 Vooainwc7eM0ViUA3oVuLrz9SznCx1fhKjNGv4jOvkv9tnUZmNJkw3YLBFR6deC0Gs
	 noXHOzEgXJ7f9XN3UYvxhFhIvmz5KVmUyjrnOkyuXIxZNP00wHux9+zmJiQzSM4NUJ
	 DF8YETydaj5y6Z0cPRmuwSSogKPlnGk6Zu6s393+PAN+E4KQRVMemSC9TEMhg9aP3k
	 JfCEJcF3yCuUet8jhiVS+hZzw0h55MMzG6//Po/K8OrpSaUBwxvLTdyJ7C6gdvTaso
	 mge7zUleXBMug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E1BD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435297358.9719.14718151475304349447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae40b0af428cbaa993d9a18fcfd1405d19eb5c439601ee4e3fe63ec064541b5f
Date: Fri, 28 Nov 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764352973
