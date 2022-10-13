Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCF433C5
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FDDFC433D6
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665675653;
	bh=+4q/z3YYGSOvu4miPBzY68VND2GBgma/PQywt7mItmg=;
	h=To:Subject:From:Date:From;
	b=Lz1fI2eHo7X4VTJW8k7fT1Qluk/hQPLFSgk+j5OQ61hzKux+2MsVl3YPYai2UtzgM
	 dt2pqNFA0U1cKAJ+W0o+0e/M/MIALyVoOb5XUDSLS6Xhg5zLD69YHeM4+9phg+SKlj
	 CAgZz4JU1ewGqy1IBEhSKa7w8KwzFUJauDcRQUyUaBnRpI3pzGABnFURo9m6uywGZu
	 Ri2Mbp3Avfmyc3aHrgs637TzH2Eyxz0WTnGLEHAjieJ5Jsb4RApCoqzbR/1Rm7B1eB
	 m5dyWwnOsJrVBex15QZhsn9GAzg3gu8lrxtHF0Cn2aLohP7P7k8CuJNa8DRJfgXcNJ
	 lhdG/eVstJl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A04C4332F
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567565335.25320.10757176408469766676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9120a0c48e4f1f14cf75cae5786be0f4bab708ca9c8c134b67f7111e183743f4
Date: Thu, 13 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665675653
