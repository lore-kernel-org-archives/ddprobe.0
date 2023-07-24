Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6341779C2
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 10:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA771C433CD
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 10:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690193528;
	bh=S+WboUDgWpZKfMUKrhkmC4Bvpdab3yAlcLsa67g2fBI=;
	h=To:Subject:From:Date:From;
	b=kCxn3DXP97RTZ/vu3s0mQnmAruZ53TdFMrpUhdDS9bVpgjO5sOZWxEb7CaZLbMxrd
	 1ep7NDR3o90ZK7dVRGtglMxF+Ua8MK4wfq0b4l+sJBph0U/sNUQkcul6tcfPMGK37C
	 8ifz+lHWBlWO+91kEF5mCPCoUXVF/yaEDuBV7FOpdHEeayVutsE8eIFFboVYfK8zIJ
	 h+9ybB0xAGS9Vv10P7r++uj/HBi3A7d5KxWzp51wExyhwkrzc15VIx3wvWlhzpVyC9
	 M9LWeufRMKAIHkE0q/GlThC1emd9Q2r5/TN7KPEZq6fFd7sp98nZNqxIjD3txQn0uH
	 ZLJtCfSgQWpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B025BC001DE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jul 2023 10:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169019352870.4157.222507661418611458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19bd766e0db3b162cab4906e8cad0cbed369ee95458f97b8213ebdea49f66afb
Date: Mon, 24 Jul 2023 10:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690193528
