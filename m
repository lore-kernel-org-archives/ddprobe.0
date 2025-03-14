Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50BE6202C3D
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741978735; cv=none; b=FuIyyDXKQ8aWvV9wYK622Uq82ECo9NKZ/nP7PzEDXHiplPcbP6Gn0ddCv17ktucSN/D+m3PczBd2l9W8XUpR8OPHw+NE2Qjk6E8CdKGaUFNcTf6W+kd9AnmkC+OH389JvYqux/LygYRSDO2l+x9jZh4F/03hTEE1Zwn4abLdMDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741978735; c=relaxed/simple;
	bh=dRJ8xguqG97Szpm1H0eakIn2M2h2AjOGqWHohuRfY9E=;
	h=To:Subject:From:Message-Id:Date; b=fx7KwlDQ3VHlv/whTYXP34GSU1HWC0UwFEmgu0Jj9nb2nSmsExwpmFi4Yt8xHtMLuMbfyigsEsqPb8iWNhIbdBgas+JwEqID7aVcFTJ+jUWyzNYYO2UPS2ezNU4SNVRcO/ZFHnR+t1lTJUlfXp/Jfk8p4ItGPsPxBo0c8Ftl1i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9t2dTLP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9t2dTLP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0EDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741978733;
	bh=dRJ8xguqG97Szpm1H0eakIn2M2h2AjOGqWHohuRfY9E=;
	h=To:Subject:From:Date:From;
	b=E9t2dTLP/VgHlGDwpQA7Kn/KVpIharBDYojWmGLa9MnvglWRL9jCPwqbsPxN0E/rj
	 WQE1XtiPFGRsnqS++bJMYdp2gantpBFwnb7Vtfix8p8oscYMD8VBCyG/B3kAmNliIs
	 VhtBKzXClZjjGvibTQQH/q5iYnQMspQGEV5iZ+p9QEuHRjKLO2iobLsZE5DVlgrSrn
	 Ktu9I1JIs7ExeMpabR/PxXuPTuDSNfBC7Zqj8v+EI6RLN9US9htKuV035dd/97K0UI
	 ubqnEMcgVZgcG8iAab1iZmVaaqRxqgS8yWnm+zZo/2iSAOZBsjUXdWBjHZkmS/G+47
	 J/eRQCSP4tNNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A255C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197873359.15297.13418351535606009697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94c20b3c472a0be88027f7a5fa3abe613c63451e27411cbc26e0365ca33bdc8
Date: Fri, 14 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741978733
