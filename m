Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E11E236437
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746806394; cv=none; b=JeNjjObP/f387HT3QC+zSlixxhYlbymKriV9Il0trCFQ9DY3zs0DgGpe1lbB8yEKnEgF2Dq4nDrnkXJfCifA6KzdvTp2in9JjMDZ7sXq75hDHQpg+vzSEvRlP9l9BnM2rltf3mY5q2ElBLM/V27dAiOzaGBq40Tafdi0gIi4Jfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746806394; c=relaxed/simple;
	bh=pBVl67afRkLi/WPEHJfvhYWAFV++2oGUrTVKzyT3FUc=;
	h=To:Subject:From:Message-Id:Date; b=PhBHYFs2ru/wFWRHOH5X1NYgm+yU5zgeWnmDmHJ91Okde4JpS0ubkK05cxHwf3U60jA2mFDsj08Beo/t/FStVZuqcQnLaYo/w1fAiXNSkpaCiN3ou5WADoEdDv9rg506GoIFDakUC9ASTDAYIvZuEiqdAYwfesdcAt+TwXNW7j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsjL9TVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsjL9TVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAC5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746806393;
	bh=pBVl67afRkLi/WPEHJfvhYWAFV++2oGUrTVKzyT3FUc=;
	h=To:Subject:From:Date:From;
	b=IsjL9TVqL0kQpvelVsHJSb6b8abTyORxMcS9kj8opTt65JbrqtUw4j2qE0mUtlyb+
	 c4XE6pJ0UxM7rN70BLStVU50Whs5Vk8iwzYrloaFnlMA2VxIpbi4EIuXmQ56MqnZto
	 HPMKshC/7W9ErqbmXIefPNsUvUYW2zV+cmjO3VQrDLlIAPnDnggZP2z3eTz3Y9pue0
	 vEFTAEBGpa2Jbsub2mBTQ0ayagLn9R4T4cCl8rZkESUVVlPlXglsJ8Ded3ZdPaMYFw
	 wg//QQWCc3bANG4CyserQTDQw3g0NYB/dTXg5Pvx+xwOJo7nIEtM4cCg/s5lROfKbn
	 u/1W6OlSWwvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ED9C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680639358.3454.18348512060285860558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784e8463844015843c5f2ed9c0765e673f965ff2980a84544ff8443ae3ba31cc
Date: Fri, 09 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746806393
