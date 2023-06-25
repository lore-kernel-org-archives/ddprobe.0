Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1E37E4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0575C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687672388;
	bh=e4Kz/WM6xNHbeeEt27ubDJtHZFgvTaYgtK8mm+2rGvI=;
	h=To:Subject:From:Date:From;
	b=UWF+H4R4hCaEpbzndIOimwts3tZKm+KqBJ7dvOh/O8qaYu+UUNBssokL7FeSTexME
	 voP5WBdVN/lJ0RUUnaojKPupFWNr9pH+yGpZ2PrBBZIWb8PbMeBABCebtkNUPdhxiL
	 UU10s5wGDy9U2PT5jWtWsPbPqwKUlvt15GgPFtmUELMTckiYuZc8hqk6CUH3tIfmOm
	 CoBnV9cM8y52pC9OVo3GAZQeLeV6YtIZXb841JSJcDsuSHiB2tDHMdfWSsVu69Jtfd
	 +LaxnwaQXXsJFOu6AOBl80rA9ntP8f8tbNj/nVBMDGJUfxUNehrYS/DgcvtS1aSnBN
	 yin7LKUxufE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C68EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 05:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767238873.15992.15467381568534044067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a681572376c70c99062ab73592d2a8663e8b601ed510fd3dd4059945a81637e3
Date: Sun, 25 Jun 2023 05:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687672388
