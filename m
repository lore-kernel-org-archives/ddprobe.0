Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455203D71
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1680C433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691659988;
	bh=ifxsBURlgKSJo9zz/AZzQl2q5qcwMDr3lH95jg9jjM4=;
	h=To:Subject:From:Date:From;
	b=ioZlTsZIiVq/89LMtA2ptVAuxxTdbHH9C71HtbWDJwx2ANX6MlhuqBWPRX2EmmcY3
	 cQXRvm11OhtV5A9qmS7RczjDKINz/EYmIS8z3UlLsli6Q1ygJNHmpztxlLVwQXcn6B
	 cXwtjcuLoUk+rwfIT9b8nL4N+WQthfifezrabnfslYYRfAOzTu3IRbJ9VMgrGHNhlb
	 rZ7dzlBg6wl5VJnEDWG67h5M1U9+fcCt1HDZDV9wBIx8iuN+au3AxZdnSshlFfRkPM
	 nkCGvuyBDL5zvSo38Ws15o0JXn/iWfc6XQ5jkGfixXAR6lc/EKCmYqkG8UelpmslK5
	 4QJj7Mu4YTQNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7D6C001DE
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 09:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165998869.3008.539784972834291406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9533e1aca23e4a2d1747b4208c8e798fd2ec0272c727f044585b308e429a64f1
Date: Thu, 10 Aug 2023 09:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691659988
