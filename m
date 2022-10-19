Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EB24C72
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0E5C433D7
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666201253;
	bh=G8olr1hLfIUEjrf7sjClyTmMPXr3p7OWOEv8HPrTSXs=;
	h=To:Subject:From:Date:From;
	b=p6DHI5EE9mxJ8Zz3HI18bbXUpaGBR7XZ7QWMVQEI0EaMZzNkaWkVcYFmi8vLkxaX5
	 e+1mFe7CwUIiOwcm6POMtXqXHEx0kFv0h0fDUG9lpKawC/mOJQ9v+0E8fSBWMUpUDf
	 2Uh/GYUqH+Fkco0oVKJRDK7twYU0S3Q2bBpR7sIGWfXeUT/uZPyEXzO7t4IW57R0CJ
	 bNKl1rAHQ11akj7KB65zRaxrfpyRSSyOkmaiZ394oKsEVhbMNgNbVTX9U2FfWb3TS6
	 stStpVI0ORk0tg30hEORRDBhAKpSEirjN7WaQSSM1ufZVil6x6QlyRVhXjfdj+1Uwe
	 DOmW2D3fACY8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525DEC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620125333.4326.1775962425852551362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4aed37602b6e0fa763fc1835d764e37f6ea7f7d0193d4378d4919502889917
Date: Wed, 19 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666201253
