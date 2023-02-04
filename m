Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4730D23DC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E07C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675549565;
	bh=JsK29Chplyw7Z3ayP9PQQKenpiY3Id9ES8m5o2rQXYg=;
	h=To:Subject:From:Date:From;
	b=ew8sRpK5lYeh+chgqQi+BY3k0Laf7gJrYWBMttDq1KDoyGRmrr37gIpx0iJpSVYfv
	 ITcc5wANJcAh9aUIs2Bq6kRz+xbT6QL6qG9eNdk4i73JQjma8eibj8YB0AeHzRhbQr
	 5JHmyeTlKMFZOITSy5cStBcETcIqqysLZHR2ps/QBwwY17q0GeW5IoYAJ67dVryCvp
	 xA2bJHJL7GXNvlnuRXOIuyRitk0wBgVEh8UDQN5k1UtHJtJXvz+khtYllT2BgTJqv8
	 sWB/cl7PwNZvNX6UJk+UNeIdQCiLi+P5tnUKj28yeSUUyqFsDfSat/OhBmgUnuX3EY
	 deKekeb86XHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2D9C636CC
	for <ddprobe@lists.linux.dev>; Sat,  4 Feb 2023 22:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167554956576.2521.329756200506848694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a759b2a6428f82c5b3efb7ee6bf0caab0d97f49eaa73a7677a3823c92b4f2e
Date: Sat, 04 Feb 2023 22:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675549565
