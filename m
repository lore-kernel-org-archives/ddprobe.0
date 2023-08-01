Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6202AB22
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E90C433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690893128;
	bh=s9ObilJOAL7+IbWRZHpeS6x6Qzx6b10M3I2ssXd3wIg=;
	h=To:Subject:From:Date:From;
	b=okzB0uoZ0pnsByr3H/8r0VnRZTEeowp3QUwjRbs+106+MgnxdjoTLD6aYKfPB68FU
	 SBTf1s2O21ycphQVpFq9j/maBZHUyvTV1J708i6hvNwHrkWGADx15eWp9Db/hECpsv
	 jNdudvpZETfFWPMeaMMDqFeU2uSKsmFuKawlOjj9yfoW6Ck1URG1Viacsp55VMpaeW
	 ldFhqw/a0wpsM+JkwbIp9KJWLVIEvdUlECKLEZmdXJiVOL7Nm79MlUcg3cyf2cfvO+
	 LMBLtm6UHPy0QaDO7DQnTqA3gF2+QevXxTUBi81JUx7PC9HcdMfilPszbMO/BxG6sz
	 BYasTtV5vav8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA744C00528
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 12:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169089312868.10254.6841557186430198092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60785ab4fdf6a555ae3c6d6c6ea0335dd9915b20d50f0812a5c2d6079f9430bc
Date: Tue, 01 Aug 2023 12:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690893128
