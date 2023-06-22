Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2AC1F93E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 15:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABF7C433C9
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687447388;
	bh=Rm+rBexULqizOWf2znBE+19KoNX8iJyF1vYc0wfzt8c=;
	h=To:Subject:From:Date:From;
	b=ApVXBuxlLqaeec11KE2UjZCsGRcllFpPmUiGy5s7Sza0kTfprfWSwDKMaqH0rW/1X
	 IvhOenCsaXXamFX00XppdZdveGj2Jo1E0r8VAwE5zVfg/i2m/FnTntSpsRjMfI7EwL
	 yM529rHrpeAnUNdm5RJ04IJEdM9+OlKos1+2rtqOWH3I1WzkNAlkTuWVbIZlp7ElBP
	 DfGy2oydAmtykqgQpkJmYN3U9uEL9zY3UAoG9a7Z6lb72RU6+RfXL2cgjM3bC+qA6E
	 yrlKZEGvD459Y53jUB0m2PD/LklEgpZZhnjZKdvH9CPWykauY02dBOxltmkttZxICS
	 hmNXfvR+5RlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2AEEB64D8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 15:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168744738868.25842.4139698828538783338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbb898c416eca42ae68065b9c9fa777c4200aaa61595a5402c2626221d79efd
Date: Thu, 22 Jun 2023 15:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687447388
