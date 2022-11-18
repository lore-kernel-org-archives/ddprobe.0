Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB78D28E3
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FE4C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668762654;
	bh=IpjCSkZkq0BJFeNU/hvXEIQsqBmC4xpXyHXZztB/iwE=;
	h=To:Subject:From:Date:From;
	b=pQJyN2ft+bJ7LFakFj0TxB0dwpKe3WfiHaV4Rd+YlfoKnFZlT/X58t5v2/9dHfknL
	 G9iE2Vih7tGW1xSVlmjIrlIoB2DYqpllR1LaIr0sQCYRzK9DBaqBL/UgwniTQqItMi
	 9V7lqkkThyZhU/oCY3CKj2JadRbSzM8VyuBYmRnUDGq4fRIAlTK2IClJybo5jDeF+7
	 JUy6ugF3gQmAcRWOcOIwE6/E2HV4LG27j9NdNJalDw/p2PxwLIniLoxSmM1YV/6tGH
	 WrHEFuUtTsrdCllHSTLDJqNPGEXltCf4kbroID1G4+VSMvJnKXbCZYSoDnAlk8K+lo
	 uRmQGqAr3XHrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BFB7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166876265436.9084.15453773448794121387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0f1eb974472dce95af362ac107be462f172efff15b930978a2b0ff16b21d8b
Date: Fri, 18 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668762654
