Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A603207
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70883C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665417653;
	bh=avcNRHn3ERQNgYQtnP3K7wPwxLqIFCuAMq/JJIXqQP8=;
	h=To:Subject:From:Date:From;
	b=a/hhXvkQv50f72NKmBvcaJnZY7XXoOiB174Bngkp4jbn+guHj4NMXZllre/dRleg4
	 MXwl9YhfK5QxKAkiZWiq4LYmB+94pLV8I1R3JuRGckuz9g3MXLk1TU2/9Vf8Uqvjlb
	 IFEVuq+h2fSKAQmuCBV4xknH6J5Hn3elRm0zHjfmQM8T0ureMTnH3VbYAlc/ItZac3
	 0KfAdq42XdPUr8oVyGIJu1VxjFQnYzR4KUtEKuy/zgI4y1YpxfxtGoNfGOgT9h4cnA
	 aE7J9bbl6L9cgsw/pev4kDoEfXlCeYAdDAScrGjiwU9lNEID6gSG9YO35nBJXgLPEV
	 dTCXj9e4L8oaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CE7C433F5
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541765335.27369.7483973638505453120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d823d7c15d2fcfa14da33c21a8e760bff556baea3981dc0a9434b720f8bc7282
Date: Mon, 10 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665417653
