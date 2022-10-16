Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBCC23A1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72083C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665936053;
	bh=cQqwG+/bJQmRGt5zDGUnb1SXkvPid/vK2LIO2GL/SIw=;
	h=To:Subject:From:Date:From;
	b=M62zW2bCCT4Vq5j6RTNguuHtWjGMVrnJa+qlVMGSV/V2/txQKZ11Krz0bOlzkmYj5
	 m//YdLztfOHXVtDlA8qvtiUrEPVncg6HD0pY53oxeBp0xVqHqXMcr7G1lj3zddFzx4
	 B01SGlXHzIuIT9RcXdGnNaBHre30v3jgzjSU0qKXyo7lzKQIL3aiUHnIL4ZnobLdZs
	 fp3XsA4oSawtZZQW0vM9FW1dz3XElVAbwhb8dK2NYNlLrQPR1VVC0Pp/cWJHXFw5Zf
	 HKj1wYO0YNxo958fDgPd9HXhyB9L5YMMP7LUHdN2IKP8US1OvTEBgKzpwv/vSmu8mm
	 LuOITT8iiI42g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FDFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166593605335.20798.11978466240931491087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb43648ac4cc1514ec0aa283c9a44cfcaed5f4dd15291e080cbd7d6fdc0e292
Date: Sun, 16 Oct 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665936053
