Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB98A5CA8
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6897FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661808052;
	bh=ZtGIFswxwKw2wG1Ec/1b/8fQdjwUy1StYX2Wf2ufnU4=;
	h=To:Subject:From:Date:From;
	b=hM8DOACh4r+pFCRTMJtzeyH1Is1deDK2/8W0w+6TxbU74e6TsyP/LG0lHdKIcpkyZ
	 tGwwwGSJH6gVO6afk+9Ixk+T2kS7mqqJtSMhceEM5IvQeNchbj1TA39QZmvlt9WEEK
	 OR6ypVTUmwVSrbmCSfK8V194x98DMm1Y6q9E8gpPBFffj7zrEBIUmRy31zH1URm75C
	 ZjoiMKyMQkaBbl0kH9lZ54/77Ya20IJUUJWFQJiX2E0n5lSDXf60f9JFCR0TRHU9TQ
	 gSRCC9JnQEDcXO86DnZ1P0cylbQAWCikeRLzrfr8xkdX4ErPpbxKz3coIwrIYGIssm
	 rdKj6Cmur000Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F869ECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 21:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166180805231.9511.12840293315831263627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea47b75d825f021c4265cd4872736dc8ccbb5039e78d0e4d1952c2722be66b04
Date: Mon, 29 Aug 2022 21:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661808052
