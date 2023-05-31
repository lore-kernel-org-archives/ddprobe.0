Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A69310F4
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E154BC433EF
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685511845;
	bh=I9OceHYWCXx56SKJ9f/RJo+L5Eeq1kgc/fSoze4N4gg=;
	h=To:Subject:From:Date:From;
	b=PWRlIaMk6vx7lWq9y06fLqHZEjwEjOsiGEpPnOFS1di3U1sYrHDTlILJOsP8lpzBI
	 H/OilZYuejQHdWV/jZpphQax1xk8Ro7cCo1HNwdEV8K0dIimHcu09YB1gZqfkSKI0q
	 5JaYX9ASHNEKT3IWkdLn53yG1k3lkYCHXwQMIOn5bEokx/72h5Qp9G/nSDOB94A1Pw
	 u7eLiTsKVqF4xo0OmtQl/AGwADmb8ejaL2gfkBs125scmBg1EzjmW22y6FFKu3TChh
	 KSkj2zZUxjpcT8ePK1ZFSXG7CbwhbqCctggEWEsZvKX3i5CpkVwHz8VNrpgRmwBNWn
	 S9HDZ86zO3Yjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9428C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 05:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168551184574.13724.6453629010142830673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 463e3c05e05f51fc1c5fb4eb20d42f27e2d7cdf6abf673188cfb5c1dbc68bbc9
Date: Wed, 31 May 2023 05:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685511845
