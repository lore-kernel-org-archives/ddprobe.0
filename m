Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B081FC6
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 13:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1CD77C4339B
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 13:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682515026;
	bh=LDxA1LBHnj6EVaMhBQGecftcCyv51cSshmUKtAIUPmw=;
	h=To:Subject:From:Date:From;
	b=nmZwtdTGwmpnOQ72b+CBNkxEm0e7Q7VSg5wR5NEA0iJ9JCnC36ACxunzASVj05H5y
	 djElj4ywRgz6NlmdsDw5bHFO1RCjobM1Va1QFPl/xvAyLWQvV/lZXsWCeqdXUYLkST
	 MJnz7ZTcQ9Ak4jOyeVwkEkg4+PNjD5Q9KXzaYP/rjJ8MMGIcxG5mo/pz+XaPHRqCF3
	 DE0mlFrwN1t8oobjFrlNBDBFQzVI0PQEAyBfFh3tSKRaBoHfbFPtEMnwO1EkjP7dDu
	 cCdTzh1temwSCNGhnJeoWefoTCrStCE9lhYsGGFe5lQN6b5Bgnd4bq79bUfEXRQvkE
	 wOoGiXTP7k+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0851C77B78
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 13:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168251502589.26491.709086059177727807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa7cdd6e79b38d80b6477b488225777a35125b0c4d1be3d65fe3a1dcd92ccf0
Date: Wed, 26 Apr 2023 13:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682515025
