Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32617FD
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8974EC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672897887;
	bh=kWkmNVHqzXnMoNqId3NOjbubI7CahPF2OxpiMYe0Rjw=;
	h=To:Subject:From:Date:From;
	b=sCKGfH04g+j3eyAdbCaYGe3GAHWKkSSFIuw5/CsY9yKIiDF5oLp/KatnnhANcjfZt
	 /NCPwUqgRseTPl0k/gk9cV1hPR54RwHXsXfN0IVzjj7qQDZZhIDFffQk5+wLjdP2NA
	 zlCoX+SRrMoknlKs9Pc3qkxY6XORNq2Rg/v5hW1rxef0zGXmpZOOAPvLgsBoZxgnRB
	 IAHlJjutzSmaCFsDNzOeqERGq7uRTQQoM6k3K3EDsRYygD8hpXcCFg+GUuxIlxHINI
	 dffWDVVX0kndW1kVGRilMdeW3rt4Z/4sHrDkUZDsId7KOMxl2CMnyFwLIZLaq3qTV5
	 sfjo9TRL87YSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C963C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289788743.29500.3625557005217728678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f492239626dda7765583494450f0552c339d6268f072b38b12eee5ab23b4546
Date: Thu, 05 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672897887
