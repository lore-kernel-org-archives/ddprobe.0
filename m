Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0D378F2E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757827794; cv=none; b=czCoW/0tDWUI2nO/w7TSjp/fQMWt1PPHvuw1ZW4OlPjqsMwcY4AiUMdiJKKgEX1IAo+cSRVFNJWInoB/LSc+c10do7X8/7a7I6BDulXZp8MV1X7UI2uw4tjhWu22ifOyUHOjwvO366IZiGv+9cd2AIFigT0+lF4HyPMO1LW/nGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757827794; c=relaxed/simple;
	bh=oB7rfmOEJhIqqe8fez0MVWasRPrUvKobDsXKcm9OA2M=;
	h=To:Subject:From:Message-Id:Date; b=b+27NrKPNZiHU0b5xmZD2N2sIPXSxZtWpZROSLH9QdWQaDP41+mwXTFKGhhXp0YHnXDqFWVIhfLzHCHqplJzBwOD+o2DmRMrueWInB47uibdHTgwAHsyL5fvd1bTtJ+HPgNkykqIziyuun1QVnsR8/0DdBGcgRx10Hhdb/ze0yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtJowkgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtJowkgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FA2C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757827793;
	bh=oB7rfmOEJhIqqe8fez0MVWasRPrUvKobDsXKcm9OA2M=;
	h=To:Subject:From:Date:From;
	b=MtJowkgnxLBu1jUCno3COzktOLubQNvIrcADN84yte6qlVYVPPat6SNH03BiaIW/w
	 ovax+UZ9hFJlOU8u3UBWZS41RaFAQlIc67ByEdUmwmkqQ+71ejyRW8VwaEm1Wx/xAj
	 TD+JIG8qDOZ/zm9DxiWGh8YbUCTG+8ugzRBWBVVYC+7ii2rUYPf0hePxDZKQ/rQvic
	 SuXpLk4JFkP3gpUNCXOVXaAFp0j3rKx/F1f7aQ3ieABcCar0UAgh9onyKYVnjMwGnO
	 YNYHC2l3ff32ODZdOjTFY6VqWUEJXy5NGJqFQBGU0UCoPcvo73bfURnPwXCR4nRSEm
	 qL8oJEMDYzvDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936BFCAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782779357.32566.14301855568257187468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86cdfc6a14fabe6cbd506f0a27430e23d337ce20790265baf666670dfb2a2f16
Date: Sun, 14 Sep 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757827793
