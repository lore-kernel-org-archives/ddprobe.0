Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4DC146B2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C847C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661637052;
	bh=xYC3B1tFhZV7aUWXS50jG676TvbBc4o35N8NO/NygoE=;
	h=To:Subject:From:Date:From;
	b=MVDuhcqSIPaReMMyesyzr+98M21YcFQKBaqBff2CKIwHRGQzqLUoL6PPpxBcF5Pba
	 S3JigFimTt6HnZM4WKQPOxrGAUKsUEr0sV3weST3CLlvaaDWLgHNValG+aeMUXGErJ
	 rDmqt4Y5gN5x370Dk/gmwYOCR+GUYmHiui8YF8AAbmtRhh9g1N3/MmFb2snxco8b32
	 ss+fFSQ77jjJf9NXy26qoDacAESM+OX2Zu7XZuam8rdpYvggCdraI0DyBSQd4BUm2X
	 1RVTqLuAcP40C6VTcNTpXuEy3niV49bsq1luhFWtKuYCY5ahw5mbUBnpLB+101Hkpe
	 6vlv9T5mRiAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C17ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163705235.21689.17463247418228426955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88157bda2ac4a11233ff819d98dc1ffb574c3c553a11c874888ceaad2c98ac82
Date: Sat, 27 Aug 2022 21:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661637052
