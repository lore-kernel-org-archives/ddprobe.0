Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C0263B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C56E5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689309068;
	bh=8RAgvGXEqwtYJ/t+7THGyKb3WXH82PPU1SZRRZHKj/s=;
	h=To:Subject:From:Date:From;
	b=ERJCXxl2LRwaC0CWtA8AuuvzM9cH6zN0hje58cegR1pK4aZb7ZgPBJxFx9AawMSc9
	 dXh5bPp4OOaD4QsIU87zqvFvE8pma9IocXmzzt+/TIiTe2RkKjj/171YJBVegdyoBa
	 Kj/CG6bQ8SeeoYxpi2FS/yEmgMId6Od+ZnY8RrF+THAsdVOqAxd2OEYNLNYHKIyvE6
	 3rlN5ifH7udKzCvtVJ6I5Jgpc3+tS8wW/vp5QUIM78tTCEMXFdRHHr1uz4Jejhwhc2
	 h+WmNc2R1f0zlDlOv8aVIiapdAFK+4e5HHgZ/hOQLIN9rKO7fz54RRE/DLo3/K1bk/
	 sDMGmFMDF716A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB1EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 04:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168930906868.25637.6172720238095835590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455419449726b683d0b26ddfb2bc4aaeddf3797d55b864a31104a05ee75c8269
Date: Fri, 14 Jul 2023 04:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689309068
