Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D967EC
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8202AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673601687;
	bh=vzEJLMhVulE1boiE0X8DA0Fq/rzoWEHMzxQiB1/WDN8=;
	h=To:Subject:From:Date:From;
	b=Sx2KPrbgI1/lbSzvpc1i8S7okzaaNlx3Z6M+AbZAD+5m0HAS+S8cpgHR8pehY0Ah6
	 oF6a7MEJnj3wPrnACxTrTYZDKTyi/h5dhFQoKcQLofpSa9xWXPEjDbaXK8qctxdcCV
	 hi6g0OBpnAU/+HbKwivwsNJnbrEYkOGagR3pHk7hhWEqNrca+6vCzgLqnhQSnbpHlb
	 wjLcZ68pADboT5LLSSHEVkWkVtsVsFA/QdwF4SYEV/oa3utvA0tBv0d7EqZX0G1V+B
	 1Mq7fFKc5Xy6bDUCUidHdZtfPWiL3UEemTptIZTn00QU0hPoL5J3SYX2Yaze/wWNka
	 LOuRM7JU47Dsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60863C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360168738.23538.14024294225931116598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7367e0d1671909a4398c91caaac1830c22916d85df8987b819223492f2b68bb4
Date: Fri, 13 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673601687
