Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CEC9201016
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744040394; cv=none; b=tQJTr9QSgl/TX3QJS5bTVMaf/YDmAND+AopgLzx9L96pfOtRwbCPkxziB8o/2Xpf4NEibCQu15jef+ul2tvs1kVbek2O1Xh+FUMiEOtRCvGnt+7qHV3qvK/Ox/v0braswVuhu3SGvn9H9UrZ6rCmcLRI72hbFW5fOazRcfI0cEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744040394; c=relaxed/simple;
	bh=ULkKPipI6hV/ZXjUWkWqkNlqx2s2kpSIfx/ToTILInY=;
	h=To:Subject:From:Message-Id:Date; b=lxIpkd9lhhv2gpJdKCcXfR1K1J+n0gV/SdnIYVcxDMpu30R0qwnxJWVtCqUmiR7YVtlrhf1hWYaYwxFP0QI5o38NA3ShrTCOgj+8/kF1JuJh/GOZ2pwtzYG2R85aRwVu5yICaO+ncO0TmNZPvNPyH4U9jvEtQVwninaBU7U1bCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHFzlyH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHFzlyH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2798C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744040393;
	bh=ULkKPipI6hV/ZXjUWkWqkNlqx2s2kpSIfx/ToTILInY=;
	h=To:Subject:From:Date:From;
	b=hHFzlyH7xnO4eLm95RlPui/9nJE8ToQq+TB1EfQ+6A4VYLHsDnHy9dEVffddfwZM9
	 b/VJWD7Zo1JdeNtxKJ7RG99fWWMRK/gxw1kJcnv2A+9rBVCIee8MLjDaY4BgFs53nn
	 /iSVdtiREITRFdQI9RjURkpTeTVqGi5oxjR6HBbgPjs8nHGr9lPxro1zW5TDMaSOY1
	 sD8xLfwd8WjKRhT+Gr1B5CPS/y/EML9ZtPh+km9ANXcIvN8Gz57EOl6mpairEh3OqZ
	 iQFYLj+OkM2NFPu2T74fTFbtPYiPFy+93jBkv4tloxkqzySFbJQQmET30/vB5LjdDW
	 0TnVjhMoTFwHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925A0C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404039359.13836.12173273855984591464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e38484dabe816ea0ee9ee0924560aea0149d5ad933df45a1ad27d6440d7610e2
Date: Mon, 07 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744040393
