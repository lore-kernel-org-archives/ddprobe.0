Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3CAD535
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 19:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D622DC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 19:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675624565;
	bh=NLSjX04SDa19M9Z6bwzHNLbHGHiUslQg3iljEuotV+k=;
	h=To:Subject:From:Date:From;
	b=LdlOSvSa9VnvH7dGXuzISYcSwjJPgFIP/zhgFABVe2ZJv4AqLroV+F7yaeeqt0h2X
	 KLK9ojYnrHGvfYX21dA9pxUNg7uh4AC34Bqj1y22k/Lxbz54GmYo4yx+QsR/2+xl4a
	 T81hGc7MVGUFOiGzssGdcuQMY9Dg7p3paahMtc5GHKcvhukD984fR2KSN4iq6gXrJv
	 yEgj67muKzSnqjgdwdKWHyGhFI1MNbNVQCckMlP0DZUWxj/3WevntJIWipJQCqeHV0
	 XdkR5Nfdi788JUpsa9tHdt8Ie4F1Vq35L/eemQ1ETOsVxUYs6m/CUD0H1Aa4i+GyQu
	 uZyq7RdLZDOuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DD7C636CC
	for <ddprobe@lists.linux.dev>; Sun,  5 Feb 2023 19:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167562456573.24543.2248540802338758749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf0c9d93b92336513644d6882c2b7ee82533ca240e0cbee6b97fa7bb0263be8
Date: Sun, 05 Feb 2023 19:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675624565
