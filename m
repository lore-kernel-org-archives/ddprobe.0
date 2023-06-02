Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ACBC111B8
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5E2C433EF
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685711225;
	bh=/tEAlVXqGb9pkcXTMEhPmrP8EaKbJeXhPInrO53Pkjw=;
	h=To:Subject:From:Date:From;
	b=COR2EAMLAvjc4beeudQEoAZ59Kd7Y+HUS1Yc8m4HWYeZt2NcWM/8BcfT0EwS+VUJq
	 dsS+9GD7/VVttLXAapJ9ZhPLIPN5mgCwnGJkWdzvJ7Zqc1/Q1btiYkewnNBSem9inT
	 D1cynMwUm7g1E3Ic2qVOOQlz1RJQ360Qnqbq4Hi/BqjsrBGBPXzXk8qMkvbFOBFaAk
	 WCLkOvClwHDJlfpKHGqcsnIQAUeP/+ypyN/Eg9f4hxa0FszyBewT4TlZP1VE4Tvy/A
	 BBOdync+6ecIUDHbiR8MwjeaB35J+IWBiDFC05/Pbo3bv+ICYoy5S3o+a7Lr32kjlY
	 IMDkcEOmaygdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD605C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 13:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168571122576.6993.9642374774551862796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad006cd06d777c4a34200eaee53b018f8196a4b634e00e72c73ad99bc4a3fb5f
Date: Fri, 02 Jun 2023 13:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685711225
