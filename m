Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C2010785
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771748694; cv=none; b=AFfg/sb/aQEf8j40YhK/7FeYXNCzaZTpDeFjgqnoRpYL/nGuoVfpqGljgN7pNthLLth/zpqb3pQ1FjLfb+LnDbHPXaCSqmzuWPwRCb+/15UpmHufniTa3korxrgeHKegKEd5mLxRsmmoPE/bnQBt8Ek+oIFJ25Ja19tMwqUBjHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771748694; c=relaxed/simple;
	bh=jD/1ft2UD6dg9Zf8xLiMjoADKp//KfmMj6NU6BR7vzI=;
	h=To:Subject:From:Message-Id:Date; b=p5jxmfW3P3tZuVKvpC4soS6XY74BN989MdVDx3zgo7wIGD0oHok5kxCBrYnvq5J8CfDIqAXJTq+mlXiEQY31ns+3XPpJPi92WpepN1Oe6nIIxsZ2SknDMwtGaF3jwd0m28tXyb1zNn2Fq1L/d9/bWwLjhHYAHkKh8QV2tAYBfBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QicFq6Ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QicFq6Ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0966C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771748693;
	bh=jD/1ft2UD6dg9Zf8xLiMjoADKp//KfmMj6NU6BR7vzI=;
	h=To:Subject:From:Date:From;
	b=QicFq6Ca4YboCYC1minT/bsIPtHtxwiredUEObpBqy+V3WJJ2bd2a5jfn4ZgyTRnB
	 PhjA0CIL1b+Kd5Mwjc6L8wpxBk60JyASacwZadE/bT0Ax+xqZ9WXRytqmetVqQKOEA
	 mkf/bHbMBCnHdOoo563PXeODdU7NluFqJ3A8S7xRvdEkfJ4EFCioJapKetgHd2Wlei
	 y0sLB8ZCGsUP2tMPQ6SVdLFk8AoBeJ0wEazci3jLIHKlIRgJJRyvYz5uewxcA1cIHI
	 HRK+8dcQ3RIUkbV9Q1J3k2x2xZDWvs9Tgr2ztFyrDFLDS0NqdpoHQsyxMIn/ndMm/K
	 xCgy9qZ/BIRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D8C624D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174869358.23493.9973562226031213865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47fed7eee22ba592b2bda380f8df47b9b7944d7b3aad9c444b19014e896c76a4
Date: Sun, 22 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771748693
