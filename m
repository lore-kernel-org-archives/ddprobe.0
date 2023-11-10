Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0193E134A0
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etIN41mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E291C433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699610296;
	bh=x40o6SMpqSsLSya1U2zEyoz2LOPf7YqxYy85Bxq0ZG8=;
	h=To:Subject:From:Date:From;
	b=etIN41mgTENId53D3cHkTlkLYnWiJ3+pu/F748k9hnA2b7uMaCLyCFSCRMhtIg/w3
	 Wyx+uAzf7tgUy77jCT4ptDvRB8H0Dgzou4L/zkEQe6Dx6oCHHhnG9KCo278BfbH+05
	 Vngo+jwwrwk7+dnSnV+0pjKs2sAbLTJyLK1BZhV9zYRuItOS2zGNYI2cKTXNt4JfLr
	 zd0E8MuRSZp/kdZ2iTdCSBYJ3qPZHjY3CVZvvfzh+SIWTDQAkC+cTReMGaOdvA8eRE
	 2pqlcc4jEObkrMjewk0Tb2WiqJFad3ir0HTExuZA7mamAnDGWyHE0GCO3y44vkCE1H
	 agTAopWd7k3cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CE9C4167B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169961029639.17695.893037659388088179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b565a9f133015cca3721ea0bfcd79214cfcb7b47e57aa36cecbe75d0d061b1d
Date: Fri, 10 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699610296
