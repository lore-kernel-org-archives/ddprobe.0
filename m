Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5F215ACE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7547C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687854188;
	bh=BQs7IS68TkhkDLQBWcsjm/L5FnQxYD13UjR6uUIfp7c=;
	h=To:Subject:From:Date:From;
	b=ZGsWOySxbfBA4wlYOBXZA/miYJZkEPloS081ZYEUN+Ugm1zPEXJGm4jqCq7tvTwej
	 iycE4RABfBLGc/5cazBn1Wy88omS/srTDFd2v5nXh58Wbp9hOvKg4Bh+SUWV8l+7d/
	 26antlK2HSAEfrTPbDfFzeK8zZHxvpVwzBO3G6mAlSJfa4RidtPP2FftaY704Y9FHc
	 QMxmT/VyEX96M4SrUqtmTBOryeBv1+kqANs8CofKpMRuY42KHpPdEUlq9dHVCsecYF
	 d/tfulRX6Pj1iP4wC5V3TxQSJCQSVqyCu/jKy+Jf5Ub3Tv3yvZFese+4axBdxNEz5u
	 1fnqnmxh7XCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5D6EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 08:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168785418869.24958.14644759038737002502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff9d7f29a15a53d3d8dbb2337225056c4a746625dedecbfed3b87f8031ff9e84
Date: Tue, 27 Jun 2023 08:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687854188
