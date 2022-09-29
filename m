Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90687EA2
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68647C433B5
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664419253;
	bh=rAkXUz84ymlrRyET/1zLUERwdDN3XM/QCzd6XZiV24I=;
	h=To:Subject:From:Date:From;
	b=PGs0bcBnJ9YHazOhnlLpYH+7GFDFA9ebUSD2xdTPwxo6583Qu6MWU4p9toNypDg5G
	 r1IKNOlBP+g0vqwGSwdwD0aVHTZqQF49d/t8dsp2Ptre04Kw2V3iD+QcyuuaHUxSMl
	 UHfAROmrsFb5Z157oQ8mQjIC8XbQYmDg/VXZqW0iVkhjzu8hzOAQ3El6/qjmQ2G6Bj
	 IpFQPbXZlPBSAG19mBuiD0WjQLWJ4/z3mVe8lPEzzbEzhkAVEZ+ecD4OPCSC5rmeGn
	 aIIQ7JBnns9TupOH0+80yHJMJmTB+W62ScuwgQ9B6M6OMcRvAU+a27NG5JH0p8wqJw
	 YXWuyt0zRE4tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5231BC32771
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166441925332.17633.1299810387578079780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b17e4cb015199d28539896dd165d41c26b381bd831a079d177c05d7ef3ee6b
Date: Thu, 29 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664419253
