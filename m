Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86319937
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 07:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA876C433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 07:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683703266;
	bh=ZCxF022krWfyPM42FUOidBk3BPOQ+OwzvSosIuI1JaU=;
	h=To:Subject:From:Date:From;
	b=gSnewjrX29bIByEg00YfcqoqP3uCEqDC+XIKMy1HLSSLZPRyZ3PcHMFLoZoUf7KTJ
	 E3ISdftTxxDGjFOHphXyCvYzwgdz13mC15qYa+x+beEL70JWv4qYyCHl5DFqECacSq
	 v38/K+Rh5xA+Mwk5HF69+xwiSiSl1vwRhtvUmP/J/e8yHtzgOrDlYCMCo1xNRkDR8b
	 BEQI8RgrwtgYA0KY5xZWpozbiHata1tYJBey9xDWcHJtl51WL6XDBS0IDunMCSq08T
	 oeGLwofTlQqYC0iuwHwTnAWSUPcO3pW62P9IwFALY4RXPNSfn9uwnonF80AHLLKQ4F
	 mtpaJiAr2X6fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77C5C7EE22
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 07:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168370326580.20065.2716547687857099762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72de31a9dd98bd7326b2f0c4577db1c65fbd6486c51789474abb680ec875b5f
Date: Wed, 10 May 2023 07:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683703265
