Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B99315BE
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ECF8C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686485526;
	bh=WCfH2gnty6dlM2Mlz2W7nR3WNLaosaVdYfxkWK/8kh4=;
	h=To:Subject:From:Date:From;
	b=usLrW73eYyjVe+ta8YMA4clWBams/pIHgYCdkAoVJBmUnOMKldgcCdeKJ9m8p/lXT
	 ZFTX52e4DDzr3eVs7XQs9pmgqhw/XvcKw1v2wHfriXeD070g7zQ7fQghwVAir1nXma
	 Dg5KED5bKH6R2Mrebf+2WgszVzKx51pVXekfM2NLc7sUl071zKAJlgBm/jMhSMNFBq
	 O4h+BsvBDL4nSuGh/HlXpVI6RvLx9aGImHzC6pgjgTBu/tnqqrTvQAycsZVbAIwNsP
	 vrrm7KtCmoBb5LclhVvIAFH9CCILLvUYsn7u7RGhB3YOZNZKQNF3xbkwyMIM2rrY0D
	 xZNwJDUP7XJLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C1EC7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168648552582.4740.1743038852318762565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19985ce5357aa438b986efcfbfec01ac87686634883ef60beedb558b980f5839
Date: Sun, 11 Jun 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686485525
