Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7282322B8C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784910034; cv=none; b=KYwM15QgjZ6wzrzDuv5kmDFypSJH9HSAbiQtxtmlhXouskSSobBhotfk50DLmXylZ/6flW5F+O0tmhrYTNsKvOEP722xT1lKjF/sc9P1tlzA/Y2/rHTHwOY5mqItomm9ad5Hm3M3sffwITyDsH8oJrXPHtI2w8xlLLvE9a85OoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784910034; c=relaxed/simple;
	bh=TX0KrGFKU1NWomKXWqU6RKG0wMIQuKAToMicyEEi7WY=;
	h=To:Subject:From:Message-Id:Date; b=b7VCqOK4Twu4OXS1FBAyq9dVas2U0VB8zJ/4RxKLJ8jytn/xEPRQ5uxmuxxYMdg7v0lQHkyZAoYzkPG/hq/qrXdBxHrD2o8ZBrfOTM4iX38VO2bRMUGDYmVB1Np/l2ZVnlmY2U9EoUI6ddVDWX5fl61+9nA6zj0rs2K8dsuuPlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1R1Izp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1R1Izp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB968C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784910033;
	bh=TX0KrGFKU1NWomKXWqU6RKG0wMIQuKAToMicyEEi7WY=;
	h=To:Subject:From:Date:From;
	b=N1R1Izp7UcNELMhwJcq/VngPJ8EpElI4DLE/oR0jgfIW4KnhjFc5yS1MKOsFoEtse
	 dUUQ/qp2bspaJG08CVbvPsiy7sShjum+KN9F7AnDtqUJOp7b27GqNkCGy203S9jm/2
	 8mH2jV0NdQUGeYLl6HFey23rA6clwi+ajgX2/QwVsyNEW1OuEilISGR4k3e1Cpzdk/
	 As4ngnTQRUbfC3QvGKWxa3TywYG+HXzUGt0OWxnhTJs5VEUUH4Gw7QRUOkl4bHC0KW
	 CDirUDi5DgDw1DZw5Yz2DM+HAlTBA75eaBm76lX4x9YdH9FbwELFmaSl1H06qpGcwA
	 UFW2zbv6yQevw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8429C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178491003368.21881.6220241434834273553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f08a69ef26d565cb7502b15eaccfd1d9702da63dac2a9a3e9d13ecbed2db66
Date: Fri, 24 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784910033
