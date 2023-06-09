Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83711377
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 10:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99F7C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686307565;
	bh=0BLoyMCnUe69DfllcRPyVjsA41V7SvvwohGpJNOaby4=;
	h=To:Subject:From:Date:From;
	b=fsHI86MAMDhWa5QFucNK6jgB/+cbjqhJsO49DdGil6jqr374+8nLBO6IJoFBHyeHx
	 2q9ycuFzeHcBXjydxtKRx3nJtjfP18/7sqYvDneXLZIufK25tZDW1891X0FO2+x4gT
	 zOqZ42YM9ejkTXzRfTCEst5mHH6u02V4iSzgs0p0LDZXrbMCfktccf0QJF11q9ljMP
	 mjhWuAeGd34A+VxrCTH/PRpuemkf5An6odvMjAW7JeEg7ooks8kyqqfZnSJrGevLBt
	 2fGwkKuPl+FKcW5nJkytJxnNfdD/NxmGVLZw8r7y3JQbzyMM9mY8kMUzCTsFiVZID5
	 ZopLQ5moBGIMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C80C6C7EE29
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 10:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168630756580.30756.18082997957705135380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11633c244b21bd9007354a6ac60ab09d7d97fd8de857b098dc157efc32c95a56
Date: Fri, 09 Jun 2023 10:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686307565
