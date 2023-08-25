Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512FDCA60
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 15:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02DAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692976448;
	bh=qkhUh6GUgzDlpCLaTnw+WRYNzBK8hP+PNirtWrkfxBA=;
	h=To:Subject:From:Date:From;
	b=hhpsYVTlBibQNF6ToSGrjhf5NH7M2jhU6Zlq4iy9BTZFjX61DeqxehIGIivbUjykS
	 AEZQklMLQy1rtJ58U2QjYnXMiy+3VG06RqaT6APTyHA4ldwSIDUyQQENJW8ssr2Ep8
	 Eal339+fKVfnqYlDQkY1gQ+UmszzTPbMT9D/a9TfXJ0ETOz9/MliU9pdlD8XdK3rn/
	 kXwe6meN3LhpTheSBOC74ldYMf5avN5K+/RdrAhnNSPOkFrFQWzGJcMSrBs3VccRr+
	 /LMqKGxDWaDAxz6S0c//3jMhtSlrec3wB9qSBZQuDRvmPMrGosNcryBbwSpv12PjPc
	 LyDOTN30I8VNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D6EC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169297644867.30582.6668257927866578010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 951c35317955f2083a31c8770f9091af33a469bdb9bbc02ce71459dc80eacc80
Date: Fri, 25 Aug 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692976448
