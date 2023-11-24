Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1209A31740
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpd3SI5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA00C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700848096;
	bh=eylUOpp6fTrJocHXluBAoGwaORbVwXQFNG5Jk72ZJi0=;
	h=To:Subject:From:Date:From;
	b=lpd3SI5C0vtsFQ8bmzljrn/9h55rhjd+MMvNxCUPvZGcUcacRdAbFlPnWOcVdCkYL
	 wdT87uf8U0L9APn1dvb+a2FFHhzEcj/pz8+QxQgOX0+01Lz0F9eCAql9ruyJkTS3Lh
	 j0aY5K5h0uUkJhCG2vKNA+Zkf1D677IdCRcFGYpGzmVUOXotDK71asxjchQaWwwJAS
	 o+e1UVxeZiSN8/z9DVPJ+mPU+rCEyoAgY6aqxAotb0gx/Fws1kH1F3Egswui9C30zP
	 HKIkGEUx+WjEjGHJm7y2JCrVidFnTlcVEk4DrpgAYIgeHmHQbxHU4yP5zD7SVoor42
	 5xhqacZNtPw2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61710C61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170084809638.2618.7946469172539657401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e89249fc42c326d53476eb3d8668804f67c4635b6b09823c0ab171c74e4d8b6
Date: Fri, 24 Nov 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700848096
