Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C507F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70C18C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666005053;
	bh=SpHvouvHyZW5EKuhGb9vFg4BRuoojXLWqX3+IcdBZFw=;
	h=To:Subject:From:Date:From;
	b=XcTuVYXiMrs1jRU5I5J0nlVb97dEf97lUVNzw5wVThP89OtgFSBbCyq5N3uzgLylj
	 qsQxO50eVVsMbaLAvBZ6f0jaW0SDVIhpuFa7RfS4+kGx6VegbqSCCkKL6/4LdfEW7b
	 ypkVb02pMARsRwa1/KSNCEXp7iQCSt0zFc/Ci1e0W3elepfT5JQmd2W30bnQivMAS3
	 hiiBb1b6QJjEPUXgl7ifhn7cQNUttN8i/wh32c921X3Y6ECmrW+Re1G/MK8W8enFfw
	 ToC0Gd05b1PDXFb6XZUCVQqdwLEcLqNduxZ8vtOV7+E0kPk23M37ZG6G0oJcm/DmyW
	 PxObIQKaFYmWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54DC4C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600505334.13332.17221376656767596684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf30f72fd87e93b22939e429f93769a789bb834cca6fd9d080d1eba619405dc
Date: Mon, 17 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666005053
