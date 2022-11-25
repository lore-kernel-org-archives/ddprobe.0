Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49EC3C38
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EDBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669393854;
	bh=+78v1+Numds7nkKW/YQMBPq5qrbmxTVxM+AG2jo9dJQ=;
	h=To:Subject:From:Date:From;
	b=YR3m+2u0Vp0yzHpe9Hce+jzwaYszQWLH3Vk/VmKlj4Nn+QCzfULvQDQ1WRvn3eBhk
	 Ycpq7xrT4ll/i1YNqmJ23vf1re1gReZZIG5hdB2UVU9QWIiRwmXtwJO4zcdbQOyiI7
	 6CmnXNolbp1VIffeC4pu4TcftadaH3wUUd/PTVmN4TeE88l6kuK3DJIbt1YZqLlR+M
	 Nf9ofZ62Dlw5MW+udXjvxlChwHV/uQXoJWTdFDAkU/z74qs9nLqZMb2C9ZBvP6qsV8
	 GhmU6ztLiFmqfVCv0BLVp0KPNZ2mrvAw77NKQfSxDfHoh/CrOzj2da1FPBWCExmCX/
	 CM1Hx8SuDw9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574DBC4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 16:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166939385434.2807.2579432680503200949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19190487114f3eb51140ae6f35cbcaaf8d3efb1084d62c3026ceafad36fde066
Date: Fri, 25 Nov 2022 16:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669393854
