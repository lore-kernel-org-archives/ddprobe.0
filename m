Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF2B2FFFA5
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778356054; cv=none; b=lyEnKYK1r1F8SQsRsLAn+FLw6E5WBTyqd+9FlEuc1O8ndHCGSd0CGMApgG987Mm0K91LxuKt9RaHxbh+FFBo6o1MbPmZ7euV6pUZWX/9YTfZ3DapjdquaGSzU1O5h/zqN2nvrr615WIfCMiQ7OBlIkUWIByRDA4u+rx+6MER7po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778356054; c=relaxed/simple;
	bh=fA1wzWxtYxLqmW0C9BTYxJm6ssOil79oPiijyUKkRWY=;
	h=To:Subject:From:Message-Id:Date; b=WgAgDbHmqGoy7QReZ7i2k0HhZX1S4l24mjllz8PjuzjiN5ULGGOShJC+MUnfhayqMcuXQqc1qp0xJN3BLiqMkUedq6uJvdjyJjVBjgkjX4UEAzga/XJMz1MX5OmjCmFKbmKzKs+/Ap+hUMWweuYmYyvz2mmQCukD4DnqN1r2hW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svTYUfum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svTYUfum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37C35C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778356054;
	bh=fA1wzWxtYxLqmW0C9BTYxJm6ssOil79oPiijyUKkRWY=;
	h=To:Subject:From:Date:From;
	b=svTYUfump6w+PR8E0MVfhjULQe5vtfAxGiYfMN6/vir9zoRSIu5qSb6BMBRM7J9a9
	 hcLyfXbYovJS++yX1s4QW35InEU08xcxXuxKi20FWB55S58LoQaXXdGQst2gTe6Joc
	 JrtyxquyuPAHme8BZQhgtsLfTC93pQIy7Ky+72LRJcX/3vxPBwG27h4zbIazeA2L0y
	 vNoc6F0sNORIgwwSolYKOu2Cx8oHsWoox50GHi2A/AAiLwC1WcPjhg5jDH2/CEWpmf
	 ojSXaulnCcv1WylP2ETYAPG9hUkbfY98rQ35/f/X4/E2R4GVzbNGrygANDQt7T3lbD
	 nYwVpWKD8mQ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF0B9CD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177835605383.25626.16315658016292466493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e4c4aee848f88b93659b0ce01f5d93287635f59fb1beff1b8f590e3899a41d5
Date: Sat, 09 May 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778356053
