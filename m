Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B91B160
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 00:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E78C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 00:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682036825;
	bh=haMbLpQqa5Eem1ITDugnJErlobb5eC4IUYvrgkSrTMA=;
	h=To:Subject:From:Date:From;
	b=EPun5bUNvlLgFRRWJHQpQjw6gbRsiLuueuwlkeykTX4m3LIdpsK8TpKOlRcZlyFG6
	 yYwPXzU9vm9eTcObdNceOhoSL11VgNaAET7+BlXvlaASro0j73Cj9XXTM//e+eHx13
	 CKIbXWKMJVYYfCjqfT+6jWO8IJe6leezghFzZK+vZmWeIvsgp88qh1kXxNs1NqQMDt
	 HRdnpV+7s0d92KB3tbxhwLvoUB7w6igzalMeZ3GCxNhoH8p2NAgPoJqw3F3GyTpcHU
	 1NWzFyjtTAKlAuicfTfF6qHwz1Mq6kHbHegs/0XOdwolJqgw2YP7dWCDf2rvmM53G+
	 aR/+7V8xNafOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F4AC77B73
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 00:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168203682577.32440.2296289430953036990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824e9b4ccc84d1223502a49ad81db9aa4c86fe373e4c7f54636ff0a65891d788
Date: Fri, 21 Apr 2023 00:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682036825
