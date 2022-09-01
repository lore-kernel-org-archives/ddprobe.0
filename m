Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39BA6AA9
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C3B7C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662048053;
	bh=ra73GkMcT6Nwh7ijdT7HtH7BpYb4P35HEESeO/TzIfQ=;
	h=To:Subject:From:Date:From;
	b=af1tC0Xn4S15g7qHfADlcnNpGlqPC30+9cTCAZjMdfsBna1TMjhbshAPfEeB4FdLM
	 ud/vsXbxO0sSFJ1cp63hk7+OoocD0iauVb+QC3+R/h2ZkTTz05mpDnr4j+oCvY894a
	 ZsIrBHtUvzU9NxNsEEdJCsxlhfNvbhPaNrTrRbkKWfQbh3lJ1uAk7XegT8putNLxqY
	 TsyvkHpKpbKYTQa/9zMpreWbXOk7VqazDlVZ7v/10+5azyEnlqOpDXb9UB5isTQDTO
	 GzKWCcmu8jTV8HEYW3uxjlqx5KS1U/fY8e+UtX8DUNJrcf1FrbskqVjxeNXMTwZeHq
	 YHKGu2jpiJyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55353ECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166204805334.24512.7307808825455070132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8be04c6336492f3d16618805cb1552e4ce43b48432ace889c321f0374776339c
Date: Thu, 01 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662048053
