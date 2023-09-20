Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEFE23C6
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 06:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C403CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 06:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695189908;
	bh=ByiX8YLAWhIuweGkH8Pp5XEsdCYUVJ88AAeruQaEl1c=;
	h=To:Subject:From:Date:From;
	b=jMclkmWLJMYWJLvOqIrqbXMZK8gsgI+QtwmGmmIqfJTY87ovi33SzT/h1WPtcmsg8
	 yGJrs4Gr7n5EKglGs7vd0tYXfDU1T8Inv/V6NN8G3wfu4rb7QS0I5YVAcLiwH7Eml6
	 D+ZD5qKBHe8kyjRjIQyVk/X44XWpwLkoRUwspQmtP8O0lyxfta1mJlKDY/uBl7QCuc
	 i8rVzel/2UfpZ8Zp44JkQLXw5LrbyL2uOHiM7VwWqtBizSIuFCqpv7N1aTYX4aaRaQ
	 0pNxV3VH40YA0Od+zCdE4P8ydbutomq8Kb1icv0k2FMM+8LPWelq7FTz2olhDTU8Bo
	 snRtDoKQ/oVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F8FCE79AC
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 06:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169518990866.4940.6758141822469341215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe39cbc7a83bb4496543365c19203c301bf1404711ec92470e6d10a84be7fcb2
Date: Wed, 20 Sep 2023 06:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695189908
