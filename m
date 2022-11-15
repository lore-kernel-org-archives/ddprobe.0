Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7FDBA4C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F565C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668528654;
	bh=LIjgb+qRSDKyO1PfCsJbZhk5ubZ2PAiL/DNrnbQ2cjQ=;
	h=To:Subject:From:Date:From;
	b=CsdvAzYQHpDUp5MWkzBf3CEf6zOQT7we9jE4KIo6k7bLSgKPjuLh8qgeJ87rHknf+
	 3J5pokMl09t/1mOiCmBQ1LE8VKBieXr1qhc83w1icXED5O7BCgWecG3Gko5tryIkoj
	 f7+7NbTYcbtp/ibiA84uvErj8vyclPD14gXJHI7IwVqnUG9cUZKS/FCPWNdwxVEh+Y
	 vdhLIyr8zQJlh0dRIG1BmntMrRTeiONVt+nW6GY588eWBP4LfseEE0R12QgxyKOdcO
	 ieBLLfZkki/FytyQzugFBXb9sBndu6ofDU6D2DkyL+M/G9/84HMF1SFKSpTfrE2tJO
	 +A06+Z37BxZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B440C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852865436.19367.5329614012159193430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad4f54c4fcc0247f3223e3c1ce456a30e139fb14e9736cb94e9fea776efd150
Date: Tue, 15 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668528654
