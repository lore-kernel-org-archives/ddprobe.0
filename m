Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A49461
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 03:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFED6C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694490248;
	bh=Z/ff5DpUjYanrXzg/IvqZlma8QP55iiymF4lmaCdfQc=;
	h=To:Subject:From:Date:From;
	b=fe932iB7igjSR7WmHTg/TOnEh3Gi+l+tBFX6uDE6GPWbCs4nZm/IskLGnoufsRGid
	 Luvu/Bo3Xtx/ap93IboZcWJMF8aviC3hw5E8fT4AxII/XeJw+qYe1wEA1VSHRv6wFo
	 wTNFfTZqbbuDKAY9pCveim/5TjrEo/xNyXXhv8mC6NfrRBamSNZmzzfR9ZCbJJR4Rr
	 OfDmQM9hVGEV6ddqbu6CmLI89Ak6rp9dNIjQ0WQzPd0k+qU9Pyux8n8HEXMXU5c1FN
	 g6UTpOt8gWdqZg4EJIxriXW46XfJGHT/YVE1/agU6JLviQ33FCzvjdNQnFzfT+9HuX
	 Sndec5FNFwe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50A0CA0ECF
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169449024866.32329.6598648007178449924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76663fc3084de00aee9fad56960f1ced606a7e4ebbd6c172accbd356ba9f6bf
Date: Tue, 12 Sep 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694490248
