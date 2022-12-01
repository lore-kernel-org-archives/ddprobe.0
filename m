Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73B5A28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C031C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669857654;
	bh=q7HS8JqsWy5TfSZWNFeaUObVhMMppAhbATbZrlnPKGs=;
	h=To:Subject:From:Date:From;
	b=RNECqMhOYAoswt7AA2OCvYmARgXyTGwTvDuBisEC3RcmqiKgPU+EnGn6ydJox7M1u
	 KFIt4VBVsXk7WqLCFTg343ciJhvwgeOGv0l8otuO2vENzFRMaX0Eb/ysuOazx+O4aF
	 aF10YypgBIjdsp960VB0ps+AJ3+4nWjl9xVE3qDFfAP5/fr8c5liKq7NTOpB+c6QQ+
	 oeIMMdeLH+ysf1USziAF2wbFehVxn8NonNEXb99ZnflI41uSRakCI0dkqYKVlO8fuK
	 ii/GoLvOBWFKMXdOz16rcLThEdfBSTZw9iY5hlLBYh8OKrz2uLTeB7+6YQVqPOG3+a
	 jiNXJIxr3YhzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52595C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985765432.11658.10357731269817978788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f505a5611d3ab4d23639595fd6c22abf9e300c038f0817af2181aa99ed78257c
Date: Thu, 01 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669857654
