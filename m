Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3790010E6
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE3EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675393565;
	bh=oL2Bkp/MoG/pjlxmw54e45Wh6V4EVrUBLcStksXueuo=;
	h=To:Subject:From:Date:From;
	b=FqNBfxh1/3/20fsrIAeu/5Tes7fog5ZDnEtvXGBH0vhuLLMxofdxaBl8nc1E7whOo
	 w+NYobFACX47IveBECQhPq7xBMr59le2CAlHcn7iITNKzgTpukaXFqazUI4UbycI4S
	 ccBxAyzc7hgVISC30E43oW+DXu2A4Lu47h66JFi/IbmXYVY+XdLGEA1zurcqhjCvFu
	 Z+KWCkH3whoFs2FcFQyvxRmsknxeLHrXQlczY0er5vcKt/NA9jGbiq0MXD+PnIwylo
	 xIwWaoA0VKdV2gsCDPlEksd+4L1G5kGaWiUc5tmuB+sFjBNd7BEfkhZuxxr0BoH8L8
	 MGYbIofkKPM1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8039C636D3
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167539356574.2879.1612235627731909397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b798f2a3a34f91e8b3f12440dcdc921fda7a9a31027f5ae5021b1ddcd198a917
Date: Fri, 03 Feb 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675393565
