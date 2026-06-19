Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FCB5A79B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781847394; cv=none; b=Bgm1Lem18bpWoDNcEddhw5XkkiSTzBH2cofsfl8nY4xh08rH6oT/dz2fiRfahePwJ61KjJIU2IOVmvx5LkoKJfAPWwh7Qw+MVsiWt1MvlUKRyezTTG3F5ZQPhkPyv+aBL59esdHZ3cmclIU1ItMjSmMRLsKjVETG6kzZsgkZ5QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781847394; c=relaxed/simple;
	bh=UjVUAETk2pYg6gi2VDjLwGvnJqRZplU/jlAEBb6KwXE=;
	h=To:Subject:From:Message-Id:Date; b=r9Wr2cUqilQYoWhvwrzxTfhdPTQJ4BFqaDpVeC1lZ2u7txJcThHM+iEznXnndyNZ1CI6Ug35Zl7+/d9ADRhNvWhMMBtV2S/UQpnwgXD0zqM4UAFDXYpAbhCUxehDeHtDRUjHjHcEr5eEacxEnFJMDwNUGaGit0qFwK2Od3FfXhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFb6xx+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFb6xx+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D60C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781847393;
	bh=UjVUAETk2pYg6gi2VDjLwGvnJqRZplU/jlAEBb6KwXE=;
	h=To:Subject:From:Date:From;
	b=sFb6xx+qcBWQVtgWmzsX4ZCl7Pb10z7IdAiTlAnFXTr/yXxhz5H0y31/rzlX4UG1d
	 hRnJqs22663E54XLjV7w3znRcUEIaS8f4grrrLXa9i7o9av5AKAFSs4PQxUyrtAD5L
	 lTC701ljpXePJ2C5BqFNpZZLJxOjy4GddqkILViPhrd3rpXXJETouT6NejX1U35rMN
	 Io6japZ0QsZpq0YnDxSnlyueVpbxg+NwSN6CxKCVAEEBjYETUH29aQku4vvYNCKZR+
	 Sui19lSt3CRhtdPY5imh0J1TGPuvpSBRdnY2rOGBijbl/SwESXfowPXV+OV3ZMeOEs
	 OyGmiCmIqVOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E6FCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184739373.24376.8850012740612484700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ddf9049d16fe0244c964ad20653247a4a76e0f48ad7beeb9ea4e6854b9d2a62
Date: Fri, 19 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781847393
