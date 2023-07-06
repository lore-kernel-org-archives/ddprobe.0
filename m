Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECE4185A
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF001C43391
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688639228;
	bh=L5B3I9qzgpxEVFzzTmpQFw/lQje2jqVgaS0s7YJZzMU=;
	h=To:Subject:From:Date:From;
	b=iqPI0elYPC7sRGnsBrXN6COzCNqTGK1y3w6wLbXBqglzSEiUP9xusghPEl95o0xLk
	 YJh2EdTLvK6bkLEns9riZfSloQOoL06GA4nC+pBuTlKVIu3zcBmtLxEOnj5ydMchU2
	 qqe2GWgCHmBSP03a61CbTtfhbkOSMOP27YEwH4hVWKhsGQ4nDam4c0pJ1qj1P34JhA
	 OyjGOpFOW7zk+oXBL7Gtc3iRh3AlFGY3mj8FLOinYvY1xOVS4T9q35s16TUAjyP+L4
	 ZxM5qn2//XKqF+jd5oBu4ZYgzHJo7SOr8HPetJhazTAJiCVvxEHMAiW+2FDUKDwA+U
	 d1ZBKaJJq4dcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF883EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 10:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168863922870.17148.11533065749196430118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6969798c70c5c31653a2e189fb9ac1fd1c9efd0f793773ef4d87c1dc2aa2e2cb
Date: Thu, 06 Jul 2023 10:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688639228
