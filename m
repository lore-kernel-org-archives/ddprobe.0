Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3129F4C92
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 19:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91D2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 19:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674759785;
	bh=urP+UCMUHNqthTNPWrrM1INJzexFZFjZjpThllbjY1M=;
	h=To:Subject:From:Date:From;
	b=MpIw4qJvF6wT3EldNhjigIb+esXjhl0asjnqWKIvgJLJi8ltFZJ95Edx9JYfuDXTM
	 2nDYkXfkee/ZzfQ8VvwDWJ+SLYtJz7SlpEIfFvZe/nyti21SGc9LUwkMjhNkLWuv0I
	 UabFeIsaEKkPRvLPQ38M+7Zix0Zb4gKG/9lOtsWdEm2UjOUe87IzawRXrNnQkjxRdM
	 33GfUc/p+IeN5NwBPU8ui1GjfswMGtQiS6cYJ/+RQCOs6sOfBNhkNrfpB/QE/xDL4N
	 5y0yiJA+d76NF18zu+DWDFElVn0EzEPyZaeixUYwczi6DtUd9wNUv6CNmKey7v/BKF
	 RXDhDmVRMQjDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE5DC05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 19:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167475978575.15860.10341973483917248287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52aa55414fd0aabd17f881e56321425cc829a8a25254fd114790499415368a17
Date: Thu, 26 Jan 2023 19:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674759785
