Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC9803205
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A4EC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669331454;
	bh=Zb0jIUW6+0ugM3EN0qi5FX1l6D8KJzWvMsp18P3HQE8=;
	h=To:Subject:From:Date:From;
	b=LZZsrUoiGuRvCp3lGTAuN1OdYNXrgmALNCEK7xec6oh/mOmenbEYu6hN60+x9UPQY
	 CdGfndecxdv8/RF/mHHb4xoJH0lKEHspCgIubqevN6AoY72VYrsO+obK04NKgwGcXR
	 YKOWohywMVGZsg3yDPgaRb1JVGRS8OMZ1bJbpkH4BtocWmm76OUd+4N5tGZYuj0QTR
	 G5AA5eQ0YBA8qRWrfVHSDjYZ0EKTG2oTwisjaI6WAD0mnU8LC3elSQc+58G7ux8VZj
	 Viit8TueyE1G1deY0cwuj8U0NCERjnFGbhEJOB+9ndaiwLPSyZIab9faZ1MPXh84C4
	 /Ja9euwuvCttw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5187DC433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166933145432.6888.4793092428642526075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a7cda48a3798305d6005e285082d84e481503e1ec76a14d7ba2ac9753215b73
Date: Thu, 24 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669331454
