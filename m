Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D682A34
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27F8C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691474588;
	bh=ODhxwmEFylJWRHGeZmdKS31sbtZ4BQSR60O5UcDKRUo=;
	h=To:Subject:From:Date:From;
	b=CAcvkHdNf/g26chnFfl2iquH283k4FEF3X0XpvW9jmoMxeCMUo4AxqVXlDZysAoHW
	 NjHQtfHpiJzDv0EN7+OA4xelmuPbksHSIVNHMo/gclAICZIErjjN3DBRkChUHk8GOo
	 l0fKUBW8MncsdYFa5lTF+5lT3L5Uq5p54KW87E/fUIv2TXnYSJTM3JBrar+dPsaTag
	 txMN7oZxvMzgH3D/lfqyvP615rAkWYT2+7A3OCGhm5vFaowVsb8BlODoDrp/BgLacg
	 oruhkkPcK2qMs7yUEzMXGGl+DMWzyN42wDxIRYYKd/MpicwbsM2uELiZ2joFXA2MuH
	 p3ow0qD0qi2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2487C001DE
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147458872.4174.13787059017264178298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818eb2a2cf8711d8c72702be647cdca5ac82c1b9bfddc3e28fa3584353096b0c
Date: Tue, 08 Aug 2023 06:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691474588
