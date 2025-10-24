Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B574347FE1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761328794; cv=none; b=FHKwpxS9uEMr8YAiwQwIoX4nPKWzm9agEbm3DxtWXG6UnixyIvcxWSMbd3o3FiS3VHDi4CUetzaGZcgkZpmpBKcT1uS/SUp88sHDUYJbLASMqNKaN8mM8B6wgjlqjJ5DzFX5s5hKj9ewPiITQG9b+mrFcovKPWfP1Tf0wvfb/zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761328794; c=relaxed/simple;
	bh=8FOPTaigxqvZb5gOWwjp8tJ7OhcSpO0i238xquQm1o0=;
	h=To:Subject:From:Message-Id:Date; b=d1ES3uw3VEP509mFkNrcv9fp12hTTpjukGRg3i7GWoxVfHcekWvob0Hf2qOqKDCjSwWKRG8js5yKo8hG3+PHzSyUVCApGG3OlLytYRVYCd1wlkZ8ukf1kHU0BizReeLhlMF3VN6dOI7V3Tl/0Ueuugk5tfL5EEbFsWSN83Me/xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBXXO5Cb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBXXO5Cb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4794C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761328793;
	bh=8FOPTaigxqvZb5gOWwjp8tJ7OhcSpO0i238xquQm1o0=;
	h=To:Subject:From:Date:From;
	b=XBXXO5Cbo6GgpLn95ll1UCuVoIyE9aCfHtZNSjKzszpZwl03lFQCB7IjCaYCiiJ7E
	 mU/6Vkv+I4maw2YtX6QseunsEbpM95xxpywpnqwndUXZY4NU5LrLsgEMJW/KW3qjx1
	 Lboba0PNjVQAWE+nFdnTxbsFmIvoSbYrW0dR3aBSZKSK/wVFrSXySdbyD23tGOJQwW
	 hoHXUrKBShCa+2yuri7vQANTlHobVUWdms9elI+m7F9Ic2suGuKckiaTD/DcLk8kkT
	 V4yJXJJ0ppleVmCtM+sHV6+juZV5lgRC60c7TmftRigds2ekOhnPffwFusfysfcLfH
	 D3IgqQV8ZThSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923FCCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132879357.11712.16960345553123586345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31ef9e8aedcc123682f16936f3408e6af085167cc7554d4cd8a57208d3b53ed6
Date: Fri, 24 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761328793
