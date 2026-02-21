Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26F5311C30
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771669494; cv=none; b=YEg3XqPnOWDdNsxce+Zcuq2S3ge+Iff8oCoysT2XxS3cX7gdLHOYUbprwfqIslvFeYK8qjKDGduExTZz0WaaagBJ9LzEKSdyJEgP4jBNDTIAl35bXSGAN8Q9yXb0ak5Yb1RXFrBB3Pty08VIqSqJfX/Wmr+o9D5jv5BGGViak5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771669494; c=relaxed/simple;
	bh=zCfIfpajJuuOPv3Jrcu/WaPYK7Sa3qB1M92uvCn5/Ug=;
	h=To:Subject:From:Message-Id:Date; b=KMSWTbpL+gPjeDgq9A4UB4M2JwMF0GJ6/0xrbwIc79XL/KiuqbUjXpQdW+ccJWfkDwxQlGYmhTUq+GUr72hgml0E53Me+mCtxnXyVwTUekIrYmGavY519yuZD490Je30SXOc528tSXoW1wHrg/JDkiAqzbUsP+aXszjIuXQC0UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVrhp8Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVrhp8Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3364C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771669493;
	bh=zCfIfpajJuuOPv3Jrcu/WaPYK7Sa3qB1M92uvCn5/Ug=;
	h=To:Subject:From:Date:From;
	b=gVrhp8WokFK7+K78AG2v7JOGnVLJNHEvzcx4B1AkkkIqw7xfoQeyS779u0MO9Z6yE
	 BAdL/POs2aQUrhcULz1aTVs8hz4jp19YgFcSW10ZDUcHJXdXtBpvdw2MCAQSLe0Cze
	 qhHr5bo5rAA7Z3T9H/TR3wDSHlMumCMWkejutiBRU9NEUVTQAuq2d/TKkxDOxHi70s
	 yq/bj64hQFM9DiLwzoeVoXiGB5fM0CEX/Efk4AYQOT0PShrHD0ytan5GKDRovEImAl
	 X/D4NzCTk0xCpQOMzBk0tVB7SyCn9Fq8vNbM/6JiuknvJmESTGQwjX5ggOETiI6MbP
	 4NTvYdR8HcPfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151BC61DE2
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166949358.17407.7948096875936523597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9803d9f1259fa56d181df05223adcca0b298849855e82f1a783d76669223d469
Date: Sat, 21 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771669493
