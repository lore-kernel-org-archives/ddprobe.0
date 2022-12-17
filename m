Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD43523D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91618C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671292287;
	bh=jAi3VzW0hDEPvp19/5DCqwS+pe8MCb0hRVrMIuyWgyM=;
	h=To:Subject:From:Date:From;
	b=arv+TwZXJbuPP81N8An0ndX+sWbO7ADg+fDV8o+V+8iMvsEjHEB8E0S1QXHzB96YK
	 uJNoruvSWu4w8QJ5HLYQ0zNbCx4pqj1PdKgHgR8si08dXdBFlg3dS8u7KUNw6bBxhg
	 aTYC9R1TDsiEET39csDOnEXo3Ve8GfvVqST83fsuUQlrYv00VNHmCvzyHl33nYNrgP
	 BY2G6TdVbso8itJCQsjtFwAg1d1O01NTKGgOlOAMfWAW84lgq7vOB/MH1dvEyJOWKW
	 Tt6FBQxcirZ2MyURFnF9gxhIgyNV4g/SbHQiEafI/tKW54VQDHLGmc+3zWaEMpkUSg
	 Dso93SV49nXvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73476C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129228743.18915.16235128953207005427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275e144a32defa95cccfc0f795dd351d6a3bd20dcc6ec29cc087f78019401c26
Date: Sat, 17 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671292287
