Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47C17F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9945C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686017525;
	bh=AOC9wMe74JCsTc2/11ikWZFWKPt4pfBbDazbb+Sdi24=;
	h=To:Subject:From:Date:From;
	b=gNhmyUvtVf9BsikfOereO6CkUotlLoBJUp9edFLb2TiGU9qLjAW7LLSahx5V9NJjP
	 8WwF0Y52YLxj4immifBMOXaazBILidQUwfozVcxHSAHhWR63p8BesGWGN1z+hqC5uU
	 wj77nKHJR5t7ZiLMr7nBklHy355clP7+JbeGbQTcfBkRMaNPVGdCipLPTq8PhlmLNj
	 v4LjfCI31MT/20ngqV/M0MqCRnsZ+qdhnzVM8FEmvTAbzvodpl0Ld3aZzJuffkxGNK
	 wbnR0+vDiDqQecN77cNhEJR+jkjlpVOEe61c5xoX+SD8kmvvlLhYmRLUZIDESQwjaW
	 xJ01sd+hy86og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA774C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 02:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168601752575.6791.5187524877105965465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0b85dd4c626a6bcf1f549a5d54a947895938b3ae28d47230030689ce14940cf
Date: Tue, 06 Jun 2023 02:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686017525
