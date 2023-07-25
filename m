Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571A98BE1
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 23:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E5CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 23:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690327328;
	bh=gcrZAw9gRTLPRAOMlllqWQZ1N1fflUq+cMEHaNsJxSw=;
	h=To:Subject:From:Date:From;
	b=dXXE1tanIxb6/+sehSQyT0edePErq/sH0rY6Uw4hs6AZEayTmX+SyhD304RrlNTQD
	 Wi/HYS4de9fGyC41dXFBH+8plsFMvAO0POPQ2kPCtmLXE29/mGqnl22m8K+EIzhSsb
	 CmP/U3xFt1mDvRTyVo7ruzoDZfcMWlV/mIoXc54ami4qwi9aNh+eeEToUE/AzmeBjx
	 VoMRaJuSIGXke3UF4PmL8p9nvJE8D/HwAq51Q6OXRHjkaNttnlpIvwFMRN+NHrpqK8
	 PHI52Vzm/QpnM8MnkYS5M+wSYr/K0OXM405sa7poBB+RNSoXgtOx4G5LII3tnWYJ/M
	 /J8v1k/EK9afQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B646FEB64DD
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 23:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169032732873.4162.8017443683584027385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c1a4b52c0be735cc9fa59a33be777571f55c34091cf04876bcc6191b0e0a2b2
Date: Tue, 25 Jul 2023 23:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690327328
