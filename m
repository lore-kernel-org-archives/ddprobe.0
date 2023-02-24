Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4458C19C
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1F8EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677227706;
	bh=1qCtC9xU+fr2/9B/67qweSXCtgMIvOQtnAtTaSrkJXU=;
	h=To:Subject:From:Date:From;
	b=A2NHfwR2CMFykN/gvwjRJWviGczgJMZk06tuk8TSKX/abJVz0zz4nNelV4x2elNGE
	 ScSeHB+C5mLRBuklvvUZW0fibN+GjAuJkEMX1Gt7Sx22qlNsJwBjHQgya1/kldItgS
	 8s7qMNxViwUrjXXM4HBzopOMOp+fkaiY7eFp9g5uxphsCgMGksnXJBgCx11r8lw8Vw
	 EmpUGbv6yNxFq7yvIMUtzFkPXQWzeDxCmgIqSn3dU6vLLRAz+2ioEf/u60ufoWKl2u
	 cFcmlGVLvCTGooJaHEjXbFrNyspS+8yqi25VU9r5H7LE6rN3xcykruC8DJJVriWvh6
	 rP6jYEw6AsS3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCB30C61DA3
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 08:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167722770582.9419.4421936988988939491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0169663f429b42f912218cc72b597fa0fb823093c870f22042cbfe372b54383
Date: Fri, 24 Feb 2023 08:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677227705
