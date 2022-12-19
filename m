Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB7AED2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E6CC433F0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671436887;
	bh=BiglEj6BU/9wfcUZghGcbVLxsCbdrMcYAO0Fp8HVBZ4=;
	h=To:Subject:From:Date:From;
	b=EqMpdHHlXblKjqYs2QfFNhSM6R+ffbRz6AchavvC7WZnbTCYte6BIniwYzdz+aTW3
	 915WpUiqMyxrum7zZgj84HFWAcVgE3bl/xqPj1nCitg6kGps4zA8Yy44emE0fl9waq
	 /Jn+uGgrNT0Ued3IJQQITa4b0ZjcZLkYVGTeuQFmIhiHvXEd27G1bnymivLtn7GEsj
	 cfti8IuCQ3StUecL6Tf7e31nB1tis4AKpCOSu+8Fsw/MI86m0YovvwQZQL4NshMzHi
	 3Di8T6/X+dwFnQc+duj77lzaZrSERUumypJDD1tXJhTMAhZIspLriqwx+25zwWJuJI
	 rgaM6ffbM/WZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B576C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167143688755.30448.13415448745348655391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa96c4920c463389c5211b6e2823063aab7970232cb0061237c893ea686bd2e
Date: Mon, 19 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671436887
