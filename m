Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4442833ADA7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778992834; cv=none; b=ak89uQN9yRwMGglHV2mx8ooqrTis3KJ/sSn/DbEyMydOjb/7EqKxVwss/+w+ZuoumHqTuGf617mdBRyDcCslj6K1xQetcb1a0+VMBsd7TdmYMkYs1PrsJIk0sT2dJbSeEPEGsbvCX8XnSTJaT2MnUP/Hd03dxLd0eXCvo9al+cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778992834; c=relaxed/simple;
	bh=iBQ0MFHC5ROyoYVow0iQAHLDJ9AiR+wcREHK3f3kVHQ=;
	h=To:Subject:From:Message-Id:Date; b=tXe2yNraJnnZ20gpKAoIjyMJkotaw7wtaaDUjkxYY68COaoCq5AEpkFGm+FL0exKRBsxdyF+SgmXpRqwelj8YHh+m+7RRIkxJFLzpmzw8Md0pc/7dAoN3iVJMTYzmNf5/LM9oxPLrECEiNTNBClr4K95Dh2g4VMIGCOwcyQppFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeR61IV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeR61IV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A51C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778992833;
	bh=iBQ0MFHC5ROyoYVow0iQAHLDJ9AiR+wcREHK3f3kVHQ=;
	h=To:Subject:From:Date:From;
	b=TeR61IV1wgMvu0lViV+O5YYbhnTrR0KwDezZNXcCLfmcQsE81N0zV743/u/ajJm7i
	 srR+6LQuXN5zODkbHReAu6RSucQ/T4IJ6yLrv49x39Kb8v7xZJrsBK3AuM3cQvB9S1
	 gF6iwUlYZSnB+6Yk2J8abeSF9Aug9RTL9Tt3tReQTqtpx+qozOj1mteNuOkpRnk+V/
	 Pm3MMrw7jLK0wFu6rlGJHCL0BZ1O9OCWJn7SXINuaxtGY1i180XeEBoVkr5Ym4Iguy
	 0XyeiS9mNuVfwvKaIdDy7r77sizE6QAwwaam+BZZz5VDmkRfBwY4RfWwzkgIqx+Ybl
	 4huDwnuQ0omOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7FECD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899283374.16277.7510853552135518351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc31f86bbf74d9d418cb2f57fa5c33086f8a428e4f99d8fcd91fd5423fde7108
Date: Sun, 17 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778992833
