Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02F12572
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75586C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663584053;
	bh=1xqmglVsnpT+86KyvNjSZqiwVfP8qzSUbDNZrZuXwC0=;
	h=To:Subject:From:Date:From;
	b=j1BsBkS0pB9m3smkrXGJhLEq4XvjJNPyeA3l/MliAMIXtDFS4bvxaHr3anE3DlEjw
	 5Xhxr4JD+S5tWJAnIyWpqD//t4CiWio64SpRz0fNXImY6VLsnfrFh90RVRq0Uiqak5
	 aOIMguCGk29YqRVoM97yfSC43t7i0nJM6vQvd7pgO7f2xIyVQug09I6FMw097VZHtW
	 YT58xq7TxccqC1mze0axsfl9liH9CmEAR4MYdKmWnpiCm+8F89bFlvbMKlv91NSuZa
	 qj/OmjPJNWHlkBOsrPdXkfdOxrQfHx56qi6QJ4+lVOSXwOYi5/Pm9/5qA1IqxPa1st
	 s+mKNYKS8n3iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E860ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358405337.16838.15527896087402335000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb228da853feffc440743b2845501e706d6b9088f97bd74c44cb6a986bc8519
Date: Mon, 19 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663584053
