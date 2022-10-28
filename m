Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD561FAE
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B01C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666945254;
	bh=8sg7oa+8I9PsGapGwD5W6WS9/RyOeEvtoghruKhmp54=;
	h=To:Subject:From:Date:From;
	b=Hcx2MbyDTlcmbuD9WAbMwnJJGa4k/d7iv+UlzhPzHMpNHrxC2K9x1Dtseboxhww+I
	 yND+sxuxAqaK06+M8lcNeyhrViUGmHUsVgYNF2TXYwe1vv3ZIQZD9u+Zo9XSuPEcwK
	 nqjxFjdTR3ddc2jGHI07UNL3VdOPN4l3dg/J1vA6o9XlwEbdLgVo5rN+nS8Io8i+Cb
	 WJW590QO8lOgnDBVEtj1Ff3NPRqQun+jaUcyUtBmSrLPh3ThMqwNrZU7d93xnB1yNg
	 CJs9DUUwJGQZuzfVyTsTaHKO3VTV1eQYr71PBWVPKzjG7VuXlaAbVAWcxQpOqcK8vc
	 N1sc9o5et+fEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58ACFC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166694525435.20240.8847160614436768074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f52378f25533814d67cf6f2e6ad72ceef1e3b2f6f185f56326edb023ff1d20
Date: Fri, 28 Oct 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666945254
