Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6799611A
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69141C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663599053;
	bh=06JUgP8fSEaOJGQbsddLvpndcowjx/xYWamczE4uKZ8=;
	h=To:Subject:From:Date:From;
	b=s0UmTMW+PoCS48OI0L3Z0EoH6aingIr9r4Yg83zeSU2CEsUVdDsU4QCYriIHv1XDF
	 yOCquqA3zXG7373miY6VxUNaMKce+eXxwHPPYx3hDDbN0hwM7IxbRApnt8LSpDTHRF
	 dNxmrcaVTA0Y2yAwAYGJWu/eKajlEPuxa7u70VyQv3mzZ9BC0guC3OkATCc1ydB23T
	 Gu1TH0PwDFv6/S9TG5vmiV5dwX1K5UD6u4u4p3uD6R6/hqEA4ucjew3ztfHLBw1mwK
	 D+WdTHgNE1X4Z0DiWJ4IOAWwFhYRuVIXRnznSGicYme2qWxZGI12HfDWxpy6+9OE/f
	 O1ilQkBbQew4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55CF1C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359905334.13454.13008311153337186003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9cd65b3fbdc999b3e8483935b2c0ef71192df3f73612fe34afd1ae04c552474
Date: Mon, 19 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663599053
