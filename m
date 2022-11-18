Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7AC360
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FC4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668738654;
	bh=En9QGiDjwreIxlNHkB/pxbbk/7/YchHpWIOoh0Fb6lY=;
	h=To:Subject:From:Date:From;
	b=mswSSJGMttZqA+mfL65izEU1Ky8HqQJXjpuKAhTUjbuM6V5vhSzwZKiqWkpgQCMgr
	 NMTVyAkW6lj3B+iZqcOQkxJmRwZDgS8D3IYcVSn9yBOlL/rTn9bs15GO9nCSf4Qxoh
	 8zvRvoBOS0BCaJZNdFKJBSAGwwrE3oCZTSKrH14CzOo0ELo8eBrPl1fOWlLF8DG9bU
	 dARabTPDpy9ImpJxZsB8Sb45fYo+igX9d5Er9OLwTFHY6uhFWQOZZdDEO3mSfjj3SZ
	 8KWIaSa0Ttqgkf6HoWoAShxtvoXuZctIqEZQb+0R6YG+cPTqmIZ5HEEfXv48pFdUs9
	 VDc3rT2zVNjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538DCC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 02:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873865433.11456.3579817288260988757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5269f7438edf7de9d6a446b4a7c3996c4416babaf7e98154c81eebcb59435cf7
Date: Fri, 18 Nov 2022 02:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668738654
