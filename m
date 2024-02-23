Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FED142649
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708732697; cv=none; b=OcB7Km9XUe2qHES2SMT2fBiF2L/Qnt4JiVHjpMYlO7l6+oIDc9yfnuzRUDKKWX7W5D5gEosUh2TagkFPPe/TW7z4ZRtsSplnecP/jKm2XB6mkc6o1YT9tGRISmx0RIzKWcn0Y1U2+DmQiJIXbhSOEoGwxuzjmQlYSd+1vbwAcvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708732697; c=relaxed/simple;
	bh=UJE0AVf/c3RlM1J5eGZtDLwHcKuYqK1LrAzfTBprf+w=;
	h=To:Subject:From:Message-Id:Date; b=c4e1+VUjCEiWnfs0W2CywYHKP1y0pOnSOUsje3sdv2ZBgLd2IWCfNkbCQlfXICHUbJPWLMbEQbzoO5bdGHDysn3Qdl4w0lwgPn+a6ZgiJ1oyvfQX9mGZ2lRwbCYZ9i+zMqhYO8/HFD1D/6Lifi2+c1bGHiAY6fzapsSsT5h/1mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mxFquKYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mxFquKYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A6C0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708732696;
	bh=UJE0AVf/c3RlM1J5eGZtDLwHcKuYqK1LrAzfTBprf+w=;
	h=To:Subject:From:Date:From;
	b=mxFquKYeK0DN+yZ0zWGc5M5o3hArE0K+XU2tjUuu5MiwuWbHLGIF7jJucXIacYS1i
	 LKOIeLzQfbOQ7TWSNPvEUSdRO0MFf+fZUNvWMwNNODopOoIxER5inPf6cGGys5mbJ0
	 I93vbT7RVYfahtqzg+Z/FczwAwa6s1m+wQAf/3cua0cWTfl0tOZdhtREZpmGskYH4C
	 23WfM0UJ0A10N4pR/pJ1HuECvyYNYsQKuOs03hvgNJyBpHu+Ng5PBxMTRT3p2pPi0c
	 Z3Tsp9Rw6q8NqzcopkLz4j97J7XTZVFRGvMYH3rzcoKQclm8nsSvUTmrFiiDygG6Nj
	 vsb5oQLPfK70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DFE1C54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170873269643.12836.4858893900587525576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4595ff34cb76fc024da179f1fb7e22a6c399714cf0612f2a37faadb93c9d11a2
Date: Fri, 23 Feb 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708732696
