Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7E282F58
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795F9C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670878887;
	bh=fxFp8JNkFbzF0v6BRjZwM/+AOM8Vryv0KTHK06MEDgk=;
	h=To:Subject:From:Date:From;
	b=To5oWxM1iKg3p2w0YpY+NSUoGaLVrvBMXMCglev3WIv2JCAonQz4RumWwIjFF1GH7
	 rS6tyiAdKfPrX+Di9FXQvM+gugFNLJzgrIs0Bgd1BNe9sLe0FqJYWA5pxNCrn5fPnd
	 H2EyGgjNM+kDu7NJJwIKOOTjhRoaqmsFiPG8RN0giZrBaybnJ9KFrNA4uP+C4BJPfx
	 ySrnTz5OamnsZZ87eWjeO9aHpRvMCN021JepKCNnJk90iaF3+iNDkezOWPmlQnvcip
	 MHPXd7MkJ+UWCmgBYVEtdclds72E3V2fqs5QXHrY9BHEMKr0kOWJtQ4muS36nMg8sc
	 kXRwcWrO7p4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6535BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087888740.4873.18427994658866335678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6f0b0a578c158e5673348b1b573d9868955ca20d4f7aa4bbe4efb842c5b41e
Date: Mon, 12 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670878887
