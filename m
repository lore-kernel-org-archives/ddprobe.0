Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E843D78
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A989C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668781854;
	bh=kdV41fqEeLZcu+XqlMM+Fj6GoQd3k37gzHW9xMiYfmc=;
	h=To:Subject:From:Date:From;
	b=WvFLXU9BM4E2GzlrhuvOLyuVzdf0B5L4YzaiFssWo9KbauT1sakIwmK8UJ7eQXSzv
	 /gzpF0RkQB3wFelSVVFWq8qvlMU31IWa2aggzAJPmzoWBNlQw29mGMosUUq0Bs4TC0
	 QbVl3dO/yfqIvZB2tKV4L3YlZ7gdJUsNp0jhohWqJ++DI1eXlGKFGtPzwzUeNV1XVr
	 SzBiE87/o14PRRninVBedcdY9GyaOsE3CLKy7E2gDAjYsFnCMozjpIyRfZebOpJPdK
	 2TOMJVFWtfTcN/wy6DPSQakBIHgvLYybekTytgKkEZWTViSawoDXReq7r4KcOaxYG3
	 Fu92ZPAdyklBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537BDC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166878185433.9088.2668174691337063178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9ce93cbf2a7ed8b8fc6d65a451496181723a6f17cb11deae27d38af349642e
Date: Fri, 18 Nov 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668781854
