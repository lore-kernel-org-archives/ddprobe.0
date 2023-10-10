Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570F83158C
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRt4uCgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2251C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696969628;
	bh=kZjHHwh2Rqw9dqZULO1Lj22h/TVJZuHkSdUj8wtyUnw=;
	h=To:Subject:From:Date:From;
	b=mRt4uCgJk0v7Io7CA3o5TVtbuskeyRjph+rYCV2R1vUpNQgCoOl8LgrC7YtQE6pZl
	 anMfL48wRMOYm2m5sngVo2JOPp9ivhRUKBfj59qAaFvvkZ++ROA9vxgxUgD/vzd6Oo
	 3iyvSIBZJCobwVbh8S2w70LTVtKWiy3/4TJ3TVqImaLXQaWdp84YCF3sArYAlORzN4
	 0CogZ4MMY31WBszvmbYILoqGygR4LbbWC5we0UjWS5Uv4AOtu8AvovS+DdkpPi+U7w
	 il383iZGbDATFUS2zpVore8LYiXp9/x3Vg2FnSg/rayJFYzNvHbCweBoCezMUJw7bv
	 ukLZ3ZVViK/sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A65F6CD8CB4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 20:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169696962867.16570.12262434166663230157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71593515d06c6f8ced13d7e766c8cef67475d1c52f5cfadff7f45186a79a269
Date: Tue, 10 Oct 2023 20:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696969628
