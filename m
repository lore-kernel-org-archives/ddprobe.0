Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6D21367
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769265233; cv=none; b=dRO8BzuoE5cLLJ+MmwmJIpbXvvPNL1/Xwp/m7Rc3Juh68tLe+yjtxIDlC9BgbISlI/1u4iSgVsQm3vWXCdECTAdOPKxGrE6N1AQ6Apkkk4Ub03xOW1yWAYsxYmuzf7vA+tr8ggej/Xp1CcKnLxrtkbV7lnmrGuWd8BKpEjfZltg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769265233; c=relaxed/simple;
	bh=vz9kPcONrV811TXATc1ETOH4AynrvpXwkMH1BRzcMSE=;
	h=To:Subject:From:Message-Id:Date; b=uEz2+hP3EDJZcE6Dp/+LbEWUeRVppWHl9oFE6DhojPlF4ud/J64zx8ZLZvYvi4ji0wN9oRwFjevDpknDuRf6eTtuQxxA7yveSBXbtV3qtwh1w7Kky1/KGQpvu+g7aYYnyrqy3saITdGvSu562+r2qC/io0OE+KRVrXGe6uaH5Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDLGyI/i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDLGyI/i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AE0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769265233;
	bh=vz9kPcONrV811TXATc1ETOH4AynrvpXwkMH1BRzcMSE=;
	h=To:Subject:From:Date:From;
	b=kDLGyI/ixj4N7G5sH9gJzHhwPEl095zgaVp2DDK1VJ5SLmq2sSuPhOhudw3IaC0zf
	 n3217cGqoMyaHNliAnBa6kBnfgPDHkCCu0MNE/sDCdU5v/pskaEJLpOLqpazEALZZq
	 zZVMbPaMjenaVXGGjdv5DNwETBwQNYzcFblf0Aan+PYcziyJORhblUK+hAh/s4LVwz
	 ygmUvdgXS5AavME3nIprj8jTtF/5dLIhx42HdmyJsnIqVBy9HDlPeUIwVpDVLY8rUt
	 TA71lT5moYYtfDGu8xTEIS32J/rj36eoi05+zaq9WGorRwtbKhf6gh2MVQJMuE0XyL
	 gIS23vEgWKZbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97040D715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926523358.15388.1443087132847384553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb7472e549b3a44f77453e68af2fb182a941ae876bbb90eae6b835eea37c9ef
Date: Sat, 24 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769265233
