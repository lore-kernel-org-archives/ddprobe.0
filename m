Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69B83D60
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6610EC433B5
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666281653;
	bh=bDOdddO+byvRbW+ZI6XF+hFFjgBnZtOt1S/d7uol3Sg=;
	h=To:Subject:From:Date:From;
	b=bULi70iod3UY27SSNI18iNnwySwvvg33xTVSs+M10FaDdu0OTGdh7xilJdzW5hQxt
	 jgSwLVHKrtxdvHHHyW1TMl1VJcNDkJGBEv5v4cQu0Oly64nrts30Y2xl4+k8Bo367+
	 bHEjNzTMKkLRb0+BPji+WD0OOk0wd/f0jSXzNsJ6K4FWgGXwLPPn4GUU727NPHKXvA
	 1HaHuNFlzQbhBX2qmhCEAYAg2mraKgtmFPm7y8D76W69/DjH9b7hcGTl5BIbOel5VS
	 yJVKb6ppyfTfyfl8KOEXCFn9ecILtd+qzaFbQFvceh6hY/vuOP1S0HA2KUjyjV+F3Q
	 CPzlJc8lk+iEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC65C43219
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628165331.24463.2019400345251859840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09beaa5d5602aea565c46d7b43ee16ff13d4c7dd542f5de0c68552c36fb80d3a
Date: Thu, 20 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666281653
