Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B78837F8C4
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786800034; cv=none; b=LXZ96POUCtApf+oURmfzOLXSbRzzgFqi9GfImnDZTAeB0HVga4wBTpTyZqRppuD35AyzavRgc15k5yXpe2JZTcdz8MkAvD5Er/dqGT9TQoiB9n3cSQ6rgPQmq7Ej86zss58psc8rrwExU2B101a86C04SsR+G6YsHGvhAbTGrB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786800034; c=relaxed/simple;
	bh=okGyfUZli6QXoCApaKeYms4BBCl99Vd1ue5e++4CUNc=;
	h=To:Subject:From:Message-Id:Date; b=u85vHc2C3UmvIY8RxZ00fsrDUA8m6m//pPrL1y+Af3B0dnZkTxFqJAw39KjjbEHpnkIEPzJi1bSY3F/OVyxgBq3goPTp2LW+JjdTdwpiJNJvkLpm+KX7P5AUDbUo+Q9cOnx4ni1HV2L6VMGieVOM00bZ2tPavz39FOqwluexXnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLT7s+vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLT7s+vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB7A9C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786800033;
	bh=okGyfUZli6QXoCApaKeYms4BBCl99Vd1ue5e++4CUNc=;
	h=To:Subject:From:Date:From;
	b=KLT7s+vbHIjQysRWLY0gE+pumWT5+uW2RNuIZ7x1FKGGdnW2LTR0dY6zXIHn5jpYu
	 ZTFLv0yVJZpNBlA1U0e8PiOKKVJrVhRW0vE2y4YnRtvPQSTUHDDKU6a7fwurpY83bm
	 iIyaJEw5B6AWLLUzmjb0OZ42/oTqUBFJjucpaKcjSsQwe3NK312nKdc1MS7bsfg0fB
	 X5/kK0kzwJ8SdD0e79DJE2poJq3aZ5j1mCtFwMn9GqhMwdNBZyxdA2x3d7V4Rg8V+Q
	 w24Fv/lErP7TYpGMKFI68wrWHCCWJQz/MjV7cG5yxNF3WEeqElsqaRFqh4VDIoWy6m
	 ckkX0o3fZ4uSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC78C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680003368.30694.17562498219065302580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a5ded5ff6f095f99fb10b4f73ef12d7f2f7ec09a73f2903df21d5afa33de66
Date: Sat, 15 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786800033
