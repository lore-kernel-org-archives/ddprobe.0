Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F014615B6
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B9F3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672465887;
	bh=Re0WjVscEpq2mescdzlaE28T9AHN/KFv9ypPbiesIZo=;
	h=To:Subject:From:Date:From;
	b=mnNKdRrO07QHqfNpQcFnyKZdK0yj2AoiTcDadGok/+Ah986Nyt8MoiNsjVBrmdLku
	 iZWhLk6WusHHImEW5mpCpGC3YdUxoGEpLk6u7dLsnhJ6UsfoIXD/B9N5uRRfCU7IcJ
	 F8rkA8kUd/fkerrv56cy2CSh3K/qJzfBZPC2AQtY2Dd66y59pvM8HFPt0NcG5AVrfO
	 vIU1TV6BaPQTH4UqwIu0FtgUZVmolROOHYQng0IsQvvDJGZMkBTPNERAGl5oTx2w4c
	 naRuZvL4lDv6qASV0SVehcKPgTaOJ4m3BdYrNDNZLo8NGaGOUQ/Ad3zBGyxrvp1m0r
	 gy01WIAza+boA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A956C4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246588739.27955.13233647029969118093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa5611e5416e77a17fcb44e38c812c4772c83483e7dd78464e67760f0165f35b
Date: Sat, 31 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672465887
