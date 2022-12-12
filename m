Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB581854
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76141C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670806287;
	bh=ONiuhr5wOrLe4yBgKq7ctD0zQndYCefpr839hKV6yzw=;
	h=To:Subject:From:Date:From;
	b=ZW86aCDOxTNZyidlNi+TJobfgEIeHZtjflP8nKoO5yOM2xuY5cQB+ATJwUbmNjimS
	 YXi+Qfn1csFd7/Qn+U1hAJFwbnnhjMhCZRA3hG0ECnkbktfrSkpuPtmbS1KqTqzyTk
	 OVSvOhflJXFXDFU3SpSVx3mp0T9UGgKQVso3Fl6HEttKzIofa4ss2omBFMniEnEdFK
	 Z036vJzyzaPdCD0xY8wzo+jBbB1/7dPZ42MBsQgLIMtP3fArUhQERBOw+c8d6wgF4M
	 Oohcufp6kHl3wnPKwIX8AD/oIeEkA9cdSYovekfNbLbDNRzVQBiQjaiRmSkZJxQ8gd
	 Uwm4xg6zoWmZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D438C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167080628737.11505.14258420052135078423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e34bf77debd212da58019d3d799ccfc4d0a76da5835f0d39c38f1b0a3da9e3f
Date: Mon, 12 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670806287
