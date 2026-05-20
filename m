Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D46F1D435F
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779258034; cv=none; b=bfSFpGTE6sDM8L35DjvFpp1SdxwgWaLw7j4o9kEgnn+RdwwWl9Mm0Qb2s9ZeWY6KB/8cfR6lnSdkhADdnswmUB9uyTo2bIi0W/moTFd1HnuPGtEpvCgPXY4M7qTKLPKQcl1Qe0+RjOmsa6yLdMMHgNsf26Z/TiKr2Q1QkmCykQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779258034; c=relaxed/simple;
	bh=8x6RAzhZDurRYO20lgPaY6AkVnWf0wQiL+PgBJL4Teg=;
	h=To:Subject:From:Message-Id:Date; b=M/tqkPBTXOe2wOaPbc4cvGqYLwmUjHhZlgAU415gaJ9H0B7K6h3Dlj5lwwMoXGsfor25qCnY51jfBeleKWo/agdzre1cypI/LjIXh0TyGuoanZwqGGdTKCTWAir2EHKKdaCfPIaco/LkZ8dz95MvZ0l8aSgJR/g0yJfEDo966Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jw+zbN4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jw+zbN4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29FAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779258033;
	bh=8x6RAzhZDurRYO20lgPaY6AkVnWf0wQiL+PgBJL4Teg=;
	h=To:Subject:From:Date:From;
	b=Jw+zbN4NEl+MqKjmMCao9by8wpmoV1NnbkGgpkBZX9J+LuCddRq2A07BbjAhmtNJ9
	 3g+Wk44cg+YgP4m2dZrB3HtF8XqjBjgxxcdWoeNxMQvkZWDC8e/gEHmQ5j3D0F72jW
	 auq0V0tXfKp8YioiDjMHH7Ocaq52/Uz6L/Y+xm44UmWjlxg988/V2ewFTdxTqqtU8p
	 snnSCcTDp8ZSfeMuYBK6ruA0FQuL3TaTYykmkfgFIMz/O7hr4bd99DnY25z2olp1zG
	 5/BQEAnysjiJrG2fZFfUeyy1bfgO3nPpJzsntUJEo4JG1Mw11f1btXW2aaT9cGMv6G
	 Ne9mCyoQum/vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B946FCD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925803374.3838.6443782954307183080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad228b57ffcbcf610cdae48649b4d504d46a87f998817ce3959e60f27b89d7e1
Date: Wed, 20 May 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779258033
