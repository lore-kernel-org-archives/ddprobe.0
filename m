Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC946AD27
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E64DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669677054;
	bh=06kdK2/qxzIEt+cK0BI+OIXQzFTHqOg90WmmIZR3ppo=;
	h=To:Subject:From:Date:From;
	b=NCArBvMR/jkgYQSK/7Hi7U3GzIUoyJnalySOBfYcfAIABRaFmbiMxbFYRN1EJvmAU
	 aXS/w/0zAVswWpcpHTuAYC/1sOqkdlhhf3hocsK6l4W8GaG650YLHJRhEsWwg4lebT
	 zTeJTmLc+djPYwUbqcdOSSEJpOcLeD+UIC0bOZn+8JJ3hm0Hr4pugwd++uwLbfHEui
	 L6PFcjH4IWuFqxs9D3CF4bl8+jGbSkmlfrnhVPJ5joO8t1wtmsPwOJN2+pTcp1KA1b
	 cxhOJ3FjSjvP+hHiTwV+bj+iWpe5aS3MMHNbHtQiht35+vZlYMOvix0y/VTRb6AUt+
	 a1mwO/xm9GEnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559DCC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166967705434.30319.3784160919707329992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2f1ec12cc58bb7b5257dcc3649f3c0dfcbdd42b4fb0aaf2124bd4481798522
Date: Mon, 28 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669677054
