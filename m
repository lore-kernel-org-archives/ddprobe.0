Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99242582
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA41C433D6
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667397054;
	bh=c1QHy3YRFpyw910cfEa1Uy9XhwGsH+yo/gyzDBTi420=;
	h=To:Subject:From:Date:From;
	b=TpRJmrW3cw7HTKc6giYor3Mb4aPdBhzmEAUsqCIvif+g77kG5Em1DIzK1rPI6Aiow
	 A5yme8yEbSWST5rnr5ADSciXKAMUXHS3h4qYF0RLqBHUM9wHF1O8mYqgHyVx2dikCp
	 oaXnfqU+p+k2ngikP2Hvj614C2XCdtUNCVbh6nMMbJPUQd1nV0mlOGmcY6KrY2Z6EV
	 YtSUQW0E6SLzOf8M8bzzcm0EIFhctFMj8O9TNhqCR2SkcEw2jSZz446W21sC0PfHBm
	 NBMfBtkV82C3JXvg5pcV1csxMitAQnWmO8Jtoz1wRWPxl1I6ZtJNyhC5Jbqqt3B4dO
	 tu6czud6D0Qfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ADAC4332F
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739705433.20589.3132875232076185483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec97cfdc5ddec84a13d049e7dafc64c4f5e1a44fcc418c63d7be9d181ab12e75
Date: Wed, 02 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667397054
