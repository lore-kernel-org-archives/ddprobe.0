Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4927D53B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 822F6C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672936887;
	bh=0QZMchfxcgDCmaqYOmi0M+6ltbIj97o81567R/36NEc=;
	h=To:Subject:From:Date:From;
	b=f8KiEKfoS/uxTOz1gCULSaXxNj92vE/YMVQrftYJLGtDOuUHpFz0y/MxfMlaiuaU5
	 iQsxA7DWQpYQB2nZbl/c6p6eNZw5VwyCy7WdO5PfyhWfBC2KfzY20GT3vP284L4TPp
	 G/J8Eve2deoGx+h7cThOSkwGxtbYedVO+qmWPbtIC9hwMBu4Ia45tIS0z6BOXYoYtl
	 nO/J0QpQ2Qvab6N9s1rcSD2pdQuNGqaw1pFmVcp5+5t/vNBN1Sh/ENT09b8gR7F470
	 S+VTqxY1uy0mSjnTvfR0cSR8SpWQuVGZNIStcrpuandBjq+XbGA6bvA5j8B3Kz45Ew
	 8DlaDgum1Eflw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67E70C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293688741.16090.9808874464086098773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f23378495d8a3e71b9ba62a665938092c3d9a2d8a038e6e2ac97f3af038034df
Date: Thu, 05 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672936887
