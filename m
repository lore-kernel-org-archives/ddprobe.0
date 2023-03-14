Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3C623A0
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A2DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678772885;
	bh=KfbV3XIrhoikya+/+EhEhhqdMM5g0YnQFrGL6pWI+T4=;
	h=To:Subject:From:Date:From;
	b=PpMW+JS4pNzUGSkqxTqrtzcxg8XsjAR9JxrR9k0bmuZz7ZOK0d1z3vtJg1/ejRcbJ
	 11fl46Shw8g45c/rZH0Sn289ee7HGVv30/7BOJ0K++qVThp4wSJXoKuJM8o+7Xz3GD
	 ZdvMBKietb9Yod2067STkiFvQ87Cm8qIdUsdFXtCOCEL1+BNf5Rz4E1KkY1ae4tDSI
	 88i2UbJk9cHYWyojEQN2HJ6VEKATdPLrrTvdsOLjXMIrY9O1+tDimpKet+Lg1l44Hg
	 7uwlnKjAcAtzvie8jsaiNBUqNkJUGeN9i7brBLM1kmqhWg12VZYj5jkVjYHAbS/ZqU
	 aBOxiit2qkB9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3904C74A44
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877288578.8252.13575624371822106753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670417238c8816072bcab13226ff9c297b09320023bcbba2b8dc77c6be5920c0
Date: Tue, 14 Mar 2023 05:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678772885
