Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4695C1F4631
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779748354; cv=none; b=fOQjZz37GjWfEl4nkE+F2ORH5KtlG3DftJ5EqvwhOYq+9ozxlVxItcSFsHvw4N4QckuVOFTOl8Sl+qfCwqFV6MbEk9Br5Frh2gJanK2MJOmn9gcICNsouqLZG0zbWTQM0WWKA3WF6/+D+m0s5NFrVwp31kv65MBpeLJ/FkEa/No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779748354; c=relaxed/simple;
	bh=oXvNthMQ05OIFMRjxh8cTWpEg3dP+IpiLi2IZt7dr/E=;
	h=To:Subject:From:Message-Id:Date; b=oprhgRr6ek1T+4zL8WaUaNMsX89uP6WMav/4nlpM2Re04FRty+1kcR6X6ENtCdMFC00ETnTE0cKm+dYYK5jbB0WoF61oEBz3fqfaWNn1di6uksXttsLvakcWbb47l1wMJ0sXRyDAKJiUplDAeQSMzRW3iK0QrO8qMbtWgbqkQ5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heCXPd4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heCXPd4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3BAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779748353;
	bh=oXvNthMQ05OIFMRjxh8cTWpEg3dP+IpiLi2IZt7dr/E=;
	h=To:Subject:From:Date:From;
	b=heCXPd4qZGYjUK3DYySr4aR6nowDfotjrTtl5xgYL2h0UgdL4g8mO0tFDvyYmP8O6
	 qsix2/pWp1hNChwrBDSE240QyU+t21RLkIXnFQPXYP7CbvjRbYC4F4vw6nNGOSJxBU
	 wF2bLTje8zgok/h9Y7+mmYGlTivByyepk8mZeO0ir3PEELdr8eyZCp9slxOJj+//sq
	 YBQmqQ15SgrD3zq/12b0c3ym25jmAA1Ozzh66UjIRSy9wQ4on+G7y46ShN8D1iQ+7s
	 Ru3QX97meHhLtle5Y9lncW2sNYZsRMng/zr2qsf7bne/Wn8U1Qh9auhpAyYSgBt63E
	 hNIg51rHJqBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08AFCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974835368.29954.16296450398872624623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e9839ca360366671c0835694b25a57b6015bcc7f1ae29a282cee284d02e357
Date: Mon, 25 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779748353
