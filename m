Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C0610EB
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 04:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 192DEC433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 04:55:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684904106;
	bh=USB+xEzsVpr4Hb4YVHOlfvhaye/a7949G667JNf0Rns=;
	h=To:Subject:From:Date:From;
	b=BexB2h9Np6rwAMRJyU1u3eK94mzSKvuBOwll8A8vw5EmWqdrVdNmcwKCZ7jKZgYj+
	 oDVM2LQvUtoyQXckPpV308zRI0xgZSnfiHEvTQkTuB5kXTwR6yLicw67l03y5LoiLJ
	 bK7SBec6tljxkiFdznVgzPJ6uxTjxoGT8xDdxI4941Yo9L/4CsselFsOsKX7goNx2I
	 8q46jeEIZbB82hAM5LnvNS0FWCS0lOu4TROmjgQcT7XVTHP7dnGQQjNOISONOOq7G0
	 ibjDtUafk8V+zaCCsWMZxaPzh5xjcIOzvVgazwLVvu6NR7N8veXgZFUmuPPf5T0uWA
	 2U7fMdcfBQMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8864C7EE23
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 04:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168490410593.9923.8608930652589563231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b15a766066574d65fae7e42b04061276fdc8587d8722072ebb09c6e8aecf477
Date: Wed, 24 May 2023 04:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684904105
