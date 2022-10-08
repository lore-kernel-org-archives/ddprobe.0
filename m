Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66C52F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 745B3C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665265853;
	bh=006brSpl3sN+a/aMX7Dby4mhrCMym397kTiDgAIjVwg=;
	h=To:Subject:From:Date:From;
	b=K1j6lgqDwwZzi+izA8Jvg3EuTN3Dj7wlPgmi92sYMeWlzwKUlN7gdiHCuXLPYOH1q
	 EVv4EBNwQ3cyYKUtdoWda4hqIbRMpq5bxTpX5WOoKb3lxXf/fEbFWGxcJQknmkJjBl
	 h0NjKL+G7rMOdQPNsMZ49IIC5LaA8Ob+XWokkUwHtkszUnl6OXpXtLbE/x+K8VICyS
	 H4dSg9ErcrNrA4fNirh2z9rrVJaEuU/aXlGpvWcWpSvRkQ1foNHDK2pvxQnFzYRnEH
	 r5Uniwav65/QjIqSQgWODkgX1FQcTgv0ZRUW8CdbNMDXUhkbm2RpZpajVeSuWkuzop
	 /v2eKSQDLE9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57149C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526585333.20489.602541251524571164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a23376d8ff73649456b56ba11c3fad000ec270b5af72329c9d652fc904f7a77
Date: Sat, 08 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665265853
