Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3323D1D523
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=kernel.org
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBC7C433C9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696442769;
	bh=LLf3OFKdQnUrzYKenwFN1by2kuV6aGwl8/DZ1G8PRxo=;
	h=To:Subject:From:Date:From;
	b=P3YO+N74ui7M7VOx+lon+0osEeGAJ5dlpZ4HJid1L0264FZrq3AcPFk9h2rECUys0
	 lAYKqwCIGYl+TZ7KTwbVEpsg2cP5K+F7OhfOY9qEV0RS9E8gc71V1uY5lZMyFqss3p
	 WSSDolxh3o9VXIlycEFDL7bIjzQrRNtQkjprS0BXaXsQecq4RcUQ6eAR1STak8xPTZ
	 V1suDtef7QNyyWGV256H15l4vc02eWhq3pHLU5UlQicJ2rNcCms/5tTpa9qUisTWgJ
	 aAvYD+0w9J4SvgNz6yjUPFP1nWZeRyi7pwCa98C6Ozpq+oX1v32CbUpjNlCuJKbIeA
	 RntIWtjG7Pf2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAA6E7C4E8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644276875.22052.304163275323729097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfad5c338ed6890738be43c6a30f1af789c8acc64cb5e6ef3e991243a3f366b
Date: Wed, 04 Oct 2023 18:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696442768
