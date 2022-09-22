Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B14372580
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0BDC433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663836053;
	bh=ZnMPfzPxkfS5Bu06bwDr5bZULXQJ8TC5PuFiU4kTHCs=;
	h=To:Subject:From:Date:From;
	b=NAf7kIiEbLnX/Q51/h12Uwl+ew1ss2/CrANYnGQ3OuzJa8l/PGzW4O4ycewPc2d27
	 dLtcsERugohbqXq9MMhN8NZ5QTv6Z2QknhorCMcTPb6CfCeC6Vr+fiqr2BR7bHjuVV
	 Wiq6kxSEKEkgoh0Qloca440WzD7TBLbc3R7a/b1W45MT2ujPeWYRxdZNs9AYsPFMFl
	 1+c35+Z6MI96266MGO2TzAIlF0pv9x3scquRjw9oOsGeDE17WJ9bJUtwLm+np66Aoj
	 RpPg35FSnuFEpVrcx4iOdm+ahPqx0OOImJl7G7B49lxUALf9cp2Dc9/4t13RvBAnMH
	 GbPRUyjtmni9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523AFC6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383605332.32458.5498901889863072754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fbe83c1b800ee49419a925e4c97f02339f50a110f96e0cee526998662ebf6dc
Date: Thu, 22 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663836053
