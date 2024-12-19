Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8E17E00E
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734642954; cv=none; b=jlDbKsioa1Q7pxi0cecR8W2jSLXD7nJmPIDlRByBcu8zjBz5Nqb0GKDGQx1ihYjIYHqjPsWuKt9B+emFMjTjz0jLFhIrqSe7YFs2gPREQLs1pe+WqvkMFH4ElMGZNE2yzL73kmXpuSMJJxWpFdfS/Bp93+Lyz5hRkb41gJEFdHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734642954; c=relaxed/simple;
	bh=5OLAVMPQhU5irN3vaWiRRet25qKvM+Bc3hcwOtocatM=;
	h=To:Subject:From:Message-Id:Date; b=cYoEtL36oHPTZKCy98c1iHPTuiMwzNdM8nxpZR5nyuJCpjoxmtoc1dhdEyu2RYnm8rB8tmK10FqCtjPy9+//xTKrCMDQcO3sykHdOqYCcMLx0YGn8Jh9ue9LGJ9LzHOwNDYFnMAJmH9TxKqvEzOphl6yUW1EjSS//fDDrUbOqG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxpNfTEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxpNfTEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7E4C4CED0
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734642953;
	bh=5OLAVMPQhU5irN3vaWiRRet25qKvM+Bc3hcwOtocatM=;
	h=To:Subject:From:Date:From;
	b=JxpNfTEGYBsHev+djALwiGwY5oV1NxIcecl/OkeF7sQP9VHdIV4oqtgmpekZoMb54
	 8xwR5sT4z1wR21WHW2KQeLARzXxzNMpATzrsdJkyAcV9R4nA/cal+epAJZzetw+QCM
	 m/VD3XsRzLWLdgcWJtC0qAjQlspI8loubOPB6xeBdIpX0kLhuNanyyuFsgBpAutjTQ
	 s5MXjkn9SyKuHQ0/ciwJLukBs25ezwBpS8sn4AQgoBEzWDYA/BmCj/T9nQr9BrSsRV
	 Hka5WjT0CYaGDi1e/xTKVA5HYEDy8LbaBzHfp/PKbYCgEfTvWHDXQ+rVp9sSYUmoYl
	 B3+TkToXK+7bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A344DE77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173464295361.22668.5695272564330951714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a176588ef07b8c2337ec5921cb3c48d8dc2ad4ef7de2ec351bc65991c19af4
Date: Thu, 19 Dec 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734642953
