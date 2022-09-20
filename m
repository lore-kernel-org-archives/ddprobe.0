Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD29A7C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B5E0C43140
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663665053;
	bh=+Wj70L5AjDBaqnLPzkoyAQi2aefcIQIh9JMpwZ+QUWw=;
	h=To:Subject:From:Date:From;
	b=NoGt8hhHvHQw1ygF1imxGRgJaSa0Aa3b3iezVO2LGoK+AGl64KGL7risL8UpswgOB
	 8iUEX8/v+6K6tEQd5fAmVOmBPw0apM+YRvx0nr8jq6xAVuDj8Ak2uR5vClZZNgA4YG
	 eEzrnH05fer4JusNXeWVKFDtUlfKG672ngoYslpdvBuXxfLboy2EpDGTnv/MkhhwKH
	 IZqLRqurCGdDIZ5s7jpiY+2n7eXMz+B6q5VNYHw+9DDfsc6SqBhdSj1Pvp8ujEefJ3
	 +ssSxsaYsr5YsnmFnCQu0BRTOgVTvraZ9EQOJZyDrpdSQ9b4P1d7H88n6Se4CfhEn3
	 rtlgjLU8WwtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F881ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366505331.7828.12726829666111550649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7746a402c35b0c3979dd59e71ee249aee15c0ca7c141cb9ea8562fbdb188e521
Date: Tue, 20 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663665053
