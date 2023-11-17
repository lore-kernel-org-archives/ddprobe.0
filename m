Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D50637167
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbGaMe+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94CE4C433C7
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700246896;
	bh=3dIjjuotuSQg1fi0rO2LOtiBuvWqsbBTJeojAKoKQdU=;
	h=To:Subject:From:Date:From;
	b=TbGaMe+HcmaC9SmK49Eq9SQmv9Q0swYIEF5P9FYe0x4gDKknVOfzkS0UfPM/PRhaC
	 e46Ubkf+Ny7XgR7lVo7DnVyDbqbNl4s0p7g0j2AkuL7FAbmzZmPhnzv8NtsjXAnNKO
	 9WoAzXR0tJ/3/fkF/Eu6W0D4KMaqGo0SzPna0/PYh38hKnBPGsWPLycV5195kZt7x7
	 KVgq45O1+u6XzZ8Y1UTSOT7rM02JJBQqyjl0BoZDFKXeS7C5NmAF4PRadatszkTgV4
	 Qg3es1R9sWPo84Yvnx9OaLagodl6BvJTIEmvsldkk40MjI3SL3MInBHGIcHx0sfW8V
	 LXHMIotWQ17gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7610EC072A2
	for <ddprobe@lists.linux.dev>; Fri, 17 Nov 2023 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170024689647.17501.7077470793385337425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e212cade79860a835e069e41392325c7310e7a613d4ca46b2c127fc733767b5
Date: Fri, 17 Nov 2023 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700246896
