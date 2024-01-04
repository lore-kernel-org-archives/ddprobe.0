Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7C6219E8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIHutA5h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C266C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704367096;
	bh=9l00wXxkm3Z9lYfcynmyah1hRRDbzo2pFxIBHJppolI=;
	h=To:Subject:From:Date:From;
	b=gIHutA5hkv5WPafuOu3RBNK2DUpoQPXOcKuQ4YkOlI70ou3RzK7tgIm2DNsaSFRs+
	 yrZkkHNrT035n10vZtJ/33jaBqfBPdGV34Jz9QaOoDt579ze/sQdbmA7kiHPjY/fU5
	 bW6WBffEGb1/y5DayupTsgJ6ESMU0ndp8TlzVnsu/xBWmwbGKC5TOCZk3SSYODLGdE
	 lwa02XGsFF0d4u69GVqSwhFiLqa3u7z6WbWyT+Byrz34ptRyWWtvhGQE+GkYYqBTxg
	 gBrb38ZZy1Y7RNBtf8C2EHUkikI1J0cqVBx/n/Z+NGf206fxheKDncKamtT0IM/EDW
	 y2nLqXTPGmNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB74C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170436709642.24351.9631638308250114611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f3008e2e1694ff1fb5774ac058f67a69b86e3e5c27af2c2831b9e690845c1b
Date: Thu, 04 Jan 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704367096
