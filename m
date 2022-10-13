Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C614416
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73269C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665687053;
	bh=FLHg7u7JDpMOqZi1CkzUEDVjEZLS625t65/HfK7ffnk=;
	h=To:Subject:From:Date:From;
	b=hO5Mhf9SAU8YFOENIHfWDcnWYbntjgUp3W2OUpf+twQ0pai+IjWIlFTtxXdRX2QW4
	 MWcne+AMifpJHZMhrJyabTabHq6mMJlmqazsnJmteIkNv6AMud7LIgAXWg1lsrhmyz
	 HOKFqryFKTuMDGzHUcAAToVc4X74x3pTMLmo0cpIo2nA37BmzS3IYFfspm4z4IlJpY
	 +j2avgriWPM1O98R2iJec9TUEYeK3ps3aBkw4/VH0WT3H1k9NitjM3iT/clQu18oYr
	 uqJtvzl6ilKun3+Hd1uVCgNe8/fq8rIRvyeGDJfYDX81upcY4PHBYTJCYtmaN7IgNP
	 RtDcJXQ9S1GbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EB4C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568705333.24435.5123499078139593616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9dcea7f17cfb0baae7831c1a06d08da690cc6e677425c9e451ae6e2ade0a93a
Date: Thu, 13 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665687053
