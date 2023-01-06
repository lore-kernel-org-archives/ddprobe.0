Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6617B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92C20C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672981287;
	bh=VE97B2Y38WEikz8bbxV+0mgxyfdM7l+p8FuXd2hDths=;
	h=To:Subject:From:Date:From;
	b=EtCGcEOSxWgBVtoZqhJWlZCD92jaeBZ0niRhua2FoLLGloxtL+GBOM6HfL4uITHcl
	 azUgMx4HZj53FOBVjCfb1O/ul9B+pps1V59JovYJI4vtbtz+uzjGSTzABoGxiJdTSS
	 Db9O/z/iYEpSwqSj0TrdtNFm0IMLmPuo75wAS9RnclSPAUkHVC1yRWG7FC+GcIWwKg
	 7sSgwfTpF1E3nupbHX6Nqq0KRKkctbT3yH5tFE9gC/SAiAwhA03r61UqujR0XoFpTF
	 O9J8FciZhQe5pOs1TpKXy1IZgOY42BXiLlm12UeWrm2VlcHtDdCRVu3jvGjwCMXsM1
	 SldBkHtY8g7bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F41EC54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298128744.4467.7685064180079045921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa6a503b57c7d599f4b6bf941e4c5e1703fd46b595465092fd8bdf3c9662618
Date: Fri, 06 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672981287
