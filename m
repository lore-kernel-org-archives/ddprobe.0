Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1CE42F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 819F4C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671403287;
	bh=jUHk42jzmeiKcTRev3Qw5R8Ylg+NFjpXsNjGcFURLLA=;
	h=To:Subject:From:Date:From;
	b=E1+oNqKTIxhEbE0kzt0TehxRJWjaRGULV7JQ47RIO1L4MpBvMtSGX8KwqqfHZQdq9
	 vZhWdfmk5TrfI3wd5lwt0kLHd/PB2T28nZpYhBqJBcvF2+oKPS9ewXPlX8Rj1VZJCB
	 NzhjeXgfDyyy+mR9VTguVrZhG3/0h+lq+E54yF7Sh4rl1TweNHs0lCWFTj4pbo5TU7
	 gsbRNsJRj55sDj4DmnCxUZYDwbG5TBM8KZw7JJdb71Sq9ErfMFN7wae4VUfNYWTbp5
	 Y/vUWkBWn8ZgTHnxI6XRlzrMQyJZwpMVWNWPa2wfWnhG9iKCpJW9Ap85cBBnS2CPOM
	 c0yLNurh0nU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66A6BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140328740.15629.14379201920478557510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff1a553f27cf33c27fe854dbb78e745e35a6abeaea19a9423443483501b793a
Date: Sun, 18 Dec 2022 22:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671403287
