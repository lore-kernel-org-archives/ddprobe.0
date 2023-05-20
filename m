Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DA76ABA
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E6D1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684606146;
	bh=pmnuNCO5mug5CSaWqtje7YxKzkHw9duM9TnNUJU06Tk=;
	h=To:Subject:From:Date:From;
	b=EoK3IaAniTaOBfz0lUORprFvmXTwPDqmQgTPW9uhCO3XdUTon+sxBnFN5lt+p4p8r
	 XvfI76zGplfXq8joYyeYkDjFywFlg3TuukzQZW3XwMfgQEtgJBiYz7m1XQPvnthn10
	 CwXP/ITNa4C7Exj2OxlXfKi0Hy6aNiEvhEJyj8QNX/w7HRNovuIRzrK+mlpT7Csihj
	 GB7ZHkwAHy4hQhdozCQAkr+n6Icw/S0Y8WnBOAxKIaWhhIRLJlt4MHQrTh4SbWloXP
	 1qt2LYrp0RAqjnGIARj8hyZSyUZJ4Drb1ReAlq15NLDxY/kLmVUS1Yp9fy182eG5PT
	 IGvcYF8dohEQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC7E9C77B7F
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 18:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168460614594.22344.13164256966551053379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fede43f4de2d8913fa05b464c8eea22862029834d24310c56ce23692fc624284
Date: Sat, 20 May 2023 18:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684606145
