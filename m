Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555B58BE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 04:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D047CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 04:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692332048;
	bh=wiqhwxZbw6A6S9EjLgq/2RqvuVTxuy83m9XVDByO58Q=;
	h=To:Subject:From:Date:From;
	b=PAHMs+g+TvPDkcEvc0YSKVdLXRlUlaFx2BqyCrdhTAU5Xb+pzdqUz6n/vnWwH+Aff
	 vDM3983BToJCFOokQbQjV3HSHqffM8WO2q4yIZ9N5jGNZ2Jwbi1k5OYoc0leeqQ5dV
	 kzQN8nVPrKzms3z8ra3zZmLaA5quzABj8NwYGS1LehNfDSnPsOjxJ5w1Q/VEM38/JW
	 9mrFPSo5EeIQOkj3iKhQXKmAInjn0USH+bDKJGCUGsRMj75CrZz2U8FZPTQMvRbaQA
	 gtmQldGXtuTdfg5QvIDophXDvjhyIfD/4JYA00mUzF+ruT2UoGIjVq44mOGbswltk4
	 h0iE5N7hPo5pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A6CC05052
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 04:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169233204871.6964.3284890683679705232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72643162a1eb6dcd03e35cb49151a6a0f10ef125ebc8e23eed299a5bf770c8e4
Date: Fri, 18 Aug 2023 04:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692332048
