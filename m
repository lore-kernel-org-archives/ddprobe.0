Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA1833D3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A66C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670513454;
	bh=gytUKZXjCY8UP6oV9xu/Jo91b+ZCorPoqwDxCT8Dltc=;
	h=To:Subject:From:Date:From;
	b=GrwMBV8dPzEZacxs26H6/6OAhugs5kyHbi9oyJiDETMuQIju36OXjAggQpirbMqWQ
	 3ylGjVi+AbAS8lVGr36aPw90D9/4mfu99Gh9gMk4qbXQe0MaqoFEXJw7/BO/ifChaK
	 YF1c+9Z7/VSdI3k4YlP5ATgW4M8Egv/ob8/wE7fP6O1Y24sUClJnLCIb2T3RZLBPig
	 JphKdFH0NEXGMgoE7JZt4Urq0yCIB9tSAetvTMSd2xMQEnp5AQAhEJ5e/Uj/EWbdQ9
	 XH8/uWkg201VWMuop3Y2/UsstdYsO3Df4O6I5f/XsoXnhprjWpZ8Qp979TPaz2L4pw
	 nS4R/lHMCHSCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5532FC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167051345434.3548.7006699572317717056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d63800e18ac4fa8f6db2b5413b066bc41dd502672b5b7451018d5aee1079f75
Date: Thu, 08 Dec 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670513454
