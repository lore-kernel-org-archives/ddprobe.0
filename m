Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D359920E8
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB60C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671082887;
	bh=vKg2Y2XcyTzNrlsm2bLOxjUoJ4666MxG7MwUFnOlF4A=;
	h=To:Subject:From:Date:From;
	b=tMi1hvj6D9f6AttoSoJXsbi9XIqfxdyQrdhjxxcXPplb/qYPrMuUJuyVCghXiCWCF
	 ovbDWVku4/h3XjLhDyoNfjoDsNQ0Tzwl5VH+d3mhgDChRoC/J+fTZhXKi2TBg0K2Ev
	 ous1D/dfVULCoqPWXaffmYxM7t3MYtMnMyP2kUhMXPx3Nwc65t3W3+6zjRHFynFhNI
	 tWt8MPd6DGj/EFCRoAIeU7/UP9rIlML8JRYg0PxD+V0TliaghGITbdO+cSfX/HPQ97
	 /2ugjzrE3AFbGAlI+SsIKnXoEZ7+fty3j7D8W1BjrENCCK8O2MxJSc5FkNCuOOhMLD
	 YE3wMw7H3P9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66117C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167108288740.10966.12063482210418931578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51f44171441a64f32aa83d4cfb1ae707391548ab15ece1ef0e9f81bbdc80c3fc
Date: Thu, 15 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671082887
