Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBCB41851
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4B1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661473252;
	bh=1FiN5AvFIBlrb2Ve7k19/j2RQrLbngIwn9tvBo0PEek=;
	h=To:Subject:From:Date:From;
	b=irw6MfyYUEVNuvly3/Quqhu/77SfuCSezhMnQLESOwJMB+bdJX/m50IwuevSXN6zK
	 AO28ierHAqnM7+aIP+5eVLepq0yTwMndzfN6WTsrWKMY1DhR8CKWbl0nkWUg8GDREh
	 /PjpqCvhZKyzBBOxgNmN3PQ6ysxNZEa379dvj357TJQjcnt3WTPbINaEYBCmOg1JC+
	 vR8RoUtRcmwKzLT5IZA/4GAfBrNAyiB1n8c5F08wtdzv1FQihPi/u00vv55KqP7a+X
	 urczZNw2s43a2G5tUM4B1z+ii0Jgrd5sYPtg3C4GYRe3ynzKv9HQiCsxxZbpxgxBAQ
	 DcQ65aHRXmibg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB35ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 00:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166147325238.1489.8685760896225353133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e82d06d2399e81ae1132eae6bfbf95e7b87f0c8c8878dc77b2c0c93eceb848
Date: Fri, 26 Aug 2022 00:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661473252
