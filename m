Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076AE1D523
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9Ws9Unr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A649C433C7
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698940096;
	bh=HMxsQpF5sX9eib+pLap6ZkVg7T388muCljcDmvXn1+A=;
	h=To:Subject:From:Date:From;
	b=q9Ws9UnrwSZZ5Ck2UqlkwtNJQVB5BcoFeCqnQ0kyK2+reNWXE0FFyOpyuu1l2oCcw
	 YBnu4ZWU8quy5ym+uhxpDOUJhlADLmQ9EeE4FDY5Vi/UBIWfxwJ2b+CS1AqSW43bBK
	 hfjzAAsRdMUfd4sUSZz7y4QDJOOEFuVaJy15wtZAkN6W5keFkgeC9TjR7dOiWvyAP7
	 JL4P/FhM0oy81HwuPnIy/1jOSLdGAKJw5tmbQpy2CgRHPqOK4jyHIHiokYbmQ6T0UT
	 gBs5AMkCew3A5BYiv6jrpsoOnAsCBbtsxz9QBjfo+gbZQ3Mx0Wa2GKF0lys38vM/Wv
	 PSVH0T5pQt5vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6043CC4332F
	for <ddprobe@lists.linux.dev>; Thu,  2 Nov 2023 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169894009638.25785.18132994842284553350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 688ce009196f3c8ece6fa7d8f8a07dc034fc1471c65e709f9562aa057add8abf
Date: Thu, 02 Nov 2023 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698940096
