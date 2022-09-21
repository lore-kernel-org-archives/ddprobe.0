Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6FD1186A
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D096C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663735853;
	bh=vIavCxCXM5ucO8VB5oJS0asEVEQpqeqh8WMFNvY3wwA=;
	h=To:Subject:From:Date:From;
	b=pr1g8DO4E6QnfPQhBEWWJ5JutlXhuaJRmw9bpGkYgegvAf6bHknRoQdXtiiK5YeTa
	 UVu4qhMWCPue04jxQaYiwRs76X3WJphoz/qbp2OAbudDVLYurn2ZeAmjA8bDRLS/5c
	 TzNkfBkKTKLfaxQzuT1ESwPfkAHUWCLoduKw8sm01U01vq5h1CQIhSrYlJuOCVSMWj
	 UWjVzWe3Md7uzN2sFLgR4+0A7V02xNDU3ZiNNPrll81Pv0GJNkuNVnWMUUFEXOwdQI
	 DTP5EEFpddes7li/9/KqZ8OHOeNj4C5QnSTO1MHPTWoeofYt8EUqYEsDCyTrsL2yzJ
	 PXPqMMyhLIFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516D3C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373585332.6473.18015822316709011510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaf0b9392083cfe788444cf004f018cbf00a2142c6f3456bbd3e283e4b6ca62
Date: Wed, 21 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663735853
