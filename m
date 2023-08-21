Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D4611720
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 22:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B8FC433C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 22:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692656048;
	bh=JL722yedafz5xGMEU3sBCCs727ZBuSnBOpMcmo995to=;
	h=To:Subject:From:Date:From;
	b=Xk7WCIM7834uVg4W3K2Z6Faqtcpeys2EKEephj+5D+cc7x0b8+58kRbkaHPwRhNuz
	 lwo5/RPuVji/pcibkj3XCkvbrPYosSIMJeDy86XOlbdYcCrH3M1f+ws6VyCol7BAmr
	 R/b+vqXLnwPuB1sPb5dRrD1SMfeKqfKO77Ui08+6S+cKUxpShi+HjFcuTC4CC4jrkD
	 HjnPwF7TAO1WbsUMhmBhUMyDISZIjH3ETZxabr672iR9YTq+2VrG4u1JzC02HFIjsN
	 1+huRDrwHnwqp7TBVyXI7IRgooUPR+dQwdyGa9dBBa7/4J4V4g8zyyujXv3V2cLydi
	 ZVSPzdrBVNulA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A577AEE49A0
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 22:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169265604867.20942.15301037209811288122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d96941332c7cadb094ff591d47a12eec8c2c11b7669da3f0a7bfb99627d0382
Date: Mon, 21 Aug 2023 22:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692656048
