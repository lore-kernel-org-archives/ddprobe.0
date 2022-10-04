Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C4119B
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730ADC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664865053;
	bh=QbYwEVwlG8rs47ytjyDRCelwWGOhqxP1H/pVqW+LZW4=;
	h=To:Subject:From:Date:From;
	b=mJQTWSdgSJ7mcXzRrcAmaAMUWqvuQOvE6M5thauz8KY5/WE9J5lwrvf8NNu7TZShM
	 yy65EzQxaZoN0tPOr7jUABFO3JbhCPj16zGJdNty0XR08v7dp1zeMbQU47sCXYe2Nv
	 WRH0bJyyqYK8tllDn7+gC1UUGStWtBTQnAu995rndXdRY5FbHK2FN2gBedcBS+wi9W
	 lG5gNPG+hfUqxsNKgkGQibxJargdpoFB6BjWQnpSNcaiDjO3PogvfTNDUavmYcLvPf
	 1hEyKV4RAOD1m6KWa2QS+u4J3xPw6aSnzBJSC/NUPcz6VJc+eXPfEt+jpBkN070TTz
	 nloooiD4pf56w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5513AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486505334.7117.7996111054746952600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369472883382671ff18ab6cc49019f0befa156722ef5a57cd90ae4a04116578e
Date: Tue, 04 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664865053
