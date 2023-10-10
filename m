Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CE38186C
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 21:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLseKycs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C722FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696973828;
	bh=l9/HgQYz1cqmvq7sgj6/62Ry4v+dIzXAqFR/0/I2WQU=;
	h=To:Subject:From:Date:From;
	b=WLseKycstaDWcBZ5AoCO6pLgEE0Ne5KKu3B0KRqOJhQprnsF63FqAsDvl8qedG+Fo
	 nKCjq7od/YwCQ9DRc4WHHbe1/0hGoXAGm2zkOxfiXIMV5XXx9V0HftDdit9a90cyrN
	 2Ool+sJjFCVx7Vwj3s1SAz41NG23pbLBSRfzAHs+g9IF/luLGmojvQhKF75is2J8K4
	 pWL7vjZ9k8nb0duicGGCQLkmPNdwI2GCSjS2ASEuvfSeak6dMAdSpNnuCnUgQz5oFY
	 s9mcju192A/OGXZXnkgzWyXcfNjT8XQKbDW6L2vTmnHVYnVwIFJGk0x/twBNKCukik
	 iX82Dhgb4sGHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A713FCD98C4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169697382867.4800.14036295134055346884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44570ee81e337bfc20206f30cca9692262ddd30a50f2a1f0e93829ca974ae86f
Date: Tue, 10 Oct 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696973828
