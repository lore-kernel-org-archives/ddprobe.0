Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB391C861D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777918054; cv=none; b=ExCqJcQFYKVgMDThaFTcA9v++vDuSHlrhUaWg2GQffYWoEir29VFyK6GMM4G2f9uwl0V3gnXVcp30h0qoOYQHiWdmP32wrWT525RU6YRuicRT8TbHhWqSC9ZE2ZwiK7h4xoiJ8OoQVdVnsglXiPEtjfBjNwH/Bh1OsrUAknaYAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777918054; c=relaxed/simple;
	bh=V9GylsL9+wkBpbpwkOHS+rhJRpyTmOHibbrcNVFkV6E=;
	h=To:Subject:From:Message-Id:Date; b=XurMpLme45PLO3AF0Kzh8k/CXJz1DTPxMfAjjg5AEahjlFstLamfPhxH1n/jFc6jRCREZXgJw13ICaSmmpjyXbPPB+Hd8Pgbf0lqf2nM5AVGpwf2CjjyAapwjNz+v5uD1JW3PQJcNukce1QaFwC6F7sqP4d2DBSWZMGOYpPeoUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIBPaCzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIBPaCzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30ADC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777918053;
	bh=V9GylsL9+wkBpbpwkOHS+rhJRpyTmOHibbrcNVFkV6E=;
	h=To:Subject:From:Date:From;
	b=SIBPaCzLDhiW0KQPTUheZis+A+XCZXb72gTmLUXbD5qze31xusOrUpLHvxaAxsQbe
	 /e8ngT/BurGRGyA3mMoN53z3luIVx+0fCi2QToDcymDYn0h/rTa5kYLzqgO4GQUeXw
	 eKi2LJ1ionF+TBLUUjPZv8jPqM6q/VtxHp3JrhB+GbmmTl5AEia1bHOBPW+KJYhwer
	 SLBmIZIcqeNUKWTynK3qCHxW5YlXujSr5OqyxfC5OWHNmX4ZwAkkcnP+OsN+7TQu5l
	 8wdaagMHRJR1rKKukFZTfhEcpzenEvSxG2HuuVi85ELpGZ+Bzdnl9BeZvC4rVZVctP
	 b+F4aA3BZW+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8A6FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791805368.27892.11515131879329823799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80732999ad58d738b87d58328a0a4ffaad573bff1f7d39046f4fd1431763ee64
Date: Mon, 04 May 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777918053
