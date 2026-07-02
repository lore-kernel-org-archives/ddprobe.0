Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4C533AD8B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783006714; cv=none; b=Vl6Tx9ziMP0pQbn1mrtdRX9VdiJFWYRJg/TjQVbDcA8rCsBfgNIQ7fw9eLhXTQRWp3DOdkZXUtSGDjL6IGi4TYIxvAWgeKZysRr8GFnDBNnbO8yN7tkhbhNxF22fsHt6lqyj+3fMSMAcuRjPQOxcZ4UKtFLJBBSFo3YcnxRdAsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783006714; c=relaxed/simple;
	bh=iEd7acfE99RTrfWywkwE7cn04l9t43C5R8BHNmXTXXk=;
	h=To:Subject:From:Message-Id:Date; b=L9a5aRWP5C5RGwBu5mCy4o8RR/cJQJ1LTGWznS7y9ZCRMLTZLzFV49OFnFy6qxfUiN978iY+ptjmXii/tD4V5O2f8V/hpY5bji5QEpUJkgtC0xQ2quj32eWt+9vEQqwxLhoCc77Qp9nDL9ZbgtVaFrmoAC1FX8KX957OZ62dK3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJXBvM2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJXBvM2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2541C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783006713;
	bh=iEd7acfE99RTrfWywkwE7cn04l9t43C5R8BHNmXTXXk=;
	h=To:Subject:From:Date:From;
	b=MJXBvM2sUNs1yqZoVoMpP8VYBVAeNgcUxKuCSDGhzUAsNHM0Q1VT2SpBBo/V8Y80G
	 N3J3kqDIeOqiddvHThtmBnQ+Ihz3obfwSTr51CmEZQs0YlCSF5b+lmTFuzq7s5Y5o1
	 VonjVs6/shg9ttvjbM3RRK9Epb+E+jcXju7OsPu3DHH8/ONkvl2Y+OJf6ConLSvXCP
	 KsyiGhYCjqV9jLSszI/MA7ry9p/h66J0YTuc6dLj1t1oVOLWuvjIuRFAgN7qlOPLFw
	 5mIctqk89RVKugaBvGNqr+66aL8jKTW2dovkTykhGLaqlmB4JnenEvgKgdaRaDSKOs
	 6X2ecwgJege8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF4C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178300671368.13617.11791025051427061746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec11105ac820ea8f738227e84f80ebc218288f7ba079ece91ca0d05a399dbb7
Date: Thu, 02 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783006713
