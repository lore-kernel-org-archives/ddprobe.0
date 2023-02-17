Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3971333C9
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42ACC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676592185;
	bh=ZExmqZ6V54j4aOlqDnE+eqGEcHNBlFo9sNOWHZZ0tWw=;
	h=To:Subject:From:Date:From;
	b=GedNs94h2yhr08MLC4aEyq/S3dApFBa/rkIdxhkmyridRzCY3GwOVY+IwjlO0DnVM
	 j4UpKjLFdFq2OY++Tq/euMAX+KlUSCk4lqZnZDSsjy65fi+S3evQ+e1yRAEGnTkTL0
	 LRC2E7SfrYPC1xJhCj8Ub0oYWnjNkXe1hkKtMoG3JHkeJ7F+iUdg6MnQrbTlnZzlyl
	 sREn0asLiysvUBMASc5yrJv12+ltF2YvbNQpZj3GuNh2sJwOfN8XUAc7Pw09XTur0h
	 LCv5XgMs235BeSLMS2O1rA6jBH5mQF7xs5Ba7IWYUlrqqPSTQgV5tOwU6fAOqvtPSd
	 PdR9E+EGf/6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B689AC61DA4
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167659218573.32034.6781978040723842871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6eabd4c08625b01d46c8f8c2eaf9497e9b27c5502c35de5ae8ebbb3001d6a4f
Date: Fri, 17 Feb 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676592185
