Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3DA2550BA
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763023194; cv=none; b=U+M62taGrFlooeXW5NK1FochKZytCTKoaqNR7w/uS6giUvZSKSgNduQEkDGq8iw7PsoHRV54u4h0VY2396CwEM9OHCbyfzMij+X9nnNb/3UePQ80u2ubfrPEqEQ8D/6cyGKuY9Kt99rOLq/pDjp4BdhhYdSWxE12GNULbj8hmZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763023194; c=relaxed/simple;
	bh=HW3u8B44ScH8JFqxzY33r3cF4GYghZMNlBkG1qnCwW4=;
	h=To:Subject:From:Message-Id:Date; b=YRS6Rwy48QV3W+bHndCbklHLNteKACCm0KcN4KEvclSyZMvGn4104E4N3j1rsrwJmAuyQTWh6qoqtqXyd/QgcKIHkxN1SlcQNrPd8WGKEYhze57vJFamOA+5WBY1yEtTq1ibSe/DkK1Ot4yRQjxr9YnuMTlPwRSILN7HJiR0le0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyQ5lCFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyQ5lCFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDADC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763023193;
	bh=HW3u8B44ScH8JFqxzY33r3cF4GYghZMNlBkG1qnCwW4=;
	h=To:Subject:From:Date:From;
	b=eyQ5lCFuzfCkRYhefpJwdw3xP5uwzMBPxAHZ95WIOxxf7VWe53SwYs9KsRx4ZuMUM
	 HyGBckrSTW/ZhOzd6gCxEepyIhuarQCU2T893JGwfZebCFhBErQ9KBAx/sWnSqEIrN
	 JGuQcsxA8MnTpv1hamCqAaAo/9lwEELnU10AjLUAk7a/brA1ng9n1MPyVwb5Ut+Sbu
	 2eZs3BlE0jDLpkMrXVsPSvRIe1OTAwnLP5XuLnKJYm7IqJdxEzz1wz+Kyt6FwY54fa
	 2aSbVfNy27J9YsXe0PZrA2QIp/Q4SEpSy4zBhrn1IkrKFEOSYq79PFd9cFqiaUtDWJ
	 MJAc9OJ1Hcd7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E799CD4F50
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302319363.4483.17636432923726552763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f8cd1c52496146096bc6869c240441222adbe1e2486c0aa22dfe201bcca823
Date: Thu, 13 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763023193
