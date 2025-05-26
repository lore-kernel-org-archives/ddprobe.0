Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429C51E3762
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748248794; cv=none; b=rSdGbGCxj/zsWLLyfrbsg6ygh3wd93K3hLf49hW5C7fcg+oixtr454+PGOj9TmVg1a7CQQtwsDL4rU+AdtFvf71U195wuVw0+PgmqbDoq2BrwrghPqbGoY3C78fvXq0E5e30FYYw/S1R+Ks1DaPExW5qb9pb/Z8dapIv3c11skw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748248794; c=relaxed/simple;
	bh=RoP7QR4R5yKYJ/6Uoa6HPZnqUzt1E0+DV88iVMSfBH0=;
	h=To:Subject:From:Message-Id:Date; b=eF4XJiST/NyezMo/c/pKEUdBW1bhY/CPcGplNI5r64qbOCM/ww9CRx/PMt6jwFut6frcEXwm5G5LxPrzroZwD1OfwmhT4h/aauks0UkMN9N1L+SLpmUSMFN9IwV9dN4F9CtT906aG92Pr0Se26/6SHY9j+FMLLrDptXLRZpPdm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJb1+xfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJb1+xfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79E6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748248793;
	bh=RoP7QR4R5yKYJ/6Uoa6HPZnqUzt1E0+DV88iVMSfBH0=;
	h=To:Subject:From:Date:From;
	b=cJb1+xfj1cb8UJ/Ugsc/zQAHWeFxYmctcaeQQtJPnSPq3KkNu2NwJsnNs5Sxtp8HZ
	 r1lL1GsNLd3dL1nzM0it6gxt2di6ULw4PfUgye1l1Cj6J1Yno+rM9zt1w1g+MbmM6Q
	 N2AHjCV3VcvckHEjv4LKzBXmpPMGxH8ZhMfjBUWzdnlzJtSyqU1tJ3kRgxS9CMVsta
	 vz1GRLrWaX4Owd6KegimL+T89WVrDAy5K+WhWCyqJArXpFzXACzCarOBEXU8XNR8s3
	 YaEl/WrQAqyFqXhKhChovr5/ks/pFyWQFpbqZn4knxWxsGwzmQ0dljOaRfoXnY7EnO
	 G3+PVbzovJ6CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0BC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824879359.29418.1320813866939652328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4a3e06d3c9a7ecfccf28711552040245b0ccc255b2bccda5b4f2c83650f373
Date: Mon, 26 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748248793
