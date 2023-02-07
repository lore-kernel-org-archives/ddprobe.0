Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFECBD0B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB49C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675739165;
	bh=vx8ukopHpe1qtRwUp5o8gA+a9PslcvRSWnElZRPNFIg=;
	h=To:Subject:From:Date:From;
	b=LEJ7dPkCf1j0dR7WiMEp0uy46zp5fOGbSDIrbwrarlwzm1DNqhYhSpI3dzhUICr3F
	 NYCtNxxvy8F4WsmJvPyLZ/1VorA2hnWk9sxrrMOiw5Hs8LX1TELm4ya6BM4YeUHmSX
	 G7UHZdfogtYxu22tr1na5aMCtc+rBJjLbxpjBDpipMhUuEML+0JxhbYtlsTE/KAYOP
	 6igYzv7lLyUBZrN3osBU8CJTvsAjfBkLQECfqwOtE+XY+uMJeXVTzwLlBcpjPgOeAW
	 3Z0SmSrF21p4Ia+ypCTuE+Y1MVWLuvzHaHc1dWFUvMRVBeGScz/J2JwWIcS6tnE/vn
	 hXChTlZDjbzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47F6C05027
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 03:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167573916573.1560.8206464212902399664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052d5ff757dc6692e8944c4e8e0fa610f5b1840ee2f81ad671ed0e682c8a0eab
Date: Tue, 07 Feb 2023 03:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675739165
