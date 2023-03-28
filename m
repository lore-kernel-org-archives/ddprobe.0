Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562933D74
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 17:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02C6DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 17:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680022986;
	bh=iJUyad7apDXtdwRCmuywOcb9Je8jYgoWQSSgwFvAK0E=;
	h=To:Subject:From:Date:From;
	b=DP1HpQzzanO3DeUPZgbvf/XwJ19urv2LlUG4JGNygfggcNc2SZ6MvJz34sY4y67GO
	 3cHnm1KAsHG1d1+ZCrKONxbIE2v2hv/bvfpDQssyzj2AiKVx7O4KkSkMTfABjoGwbY
	 2deR7zMg4+zdufVDUneDTXP8c23rD1bvPHQ90WTdH0qhGSrcsf7Fs+HigaBbkFymAb
	 aIVUNWa+3arNSAOLXVRgSCHFvur+et+PykK8xJcDpAm5IH2hOSMx2BgrRMwBDVUtiD
	 Ph1WbcfSNRWW/s1ZG60Rbc9izsq85ZKRevZ1QS2LtJ4CTnj8Nr23rJFtWXaJVKg2eC
	 75FMfLvPKv5DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D757DC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 17:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168002298586.24316.6834404791135302861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a184938f78bcd492874cacbd5e27c739f6631e15496fa9c243108c9e96577d3
Date: Tue, 28 Mar 2023 17:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680022985
