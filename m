Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302C7261398
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745836794; cv=none; b=We5Fug1hvN5uHUuLgED1aChGQ+OpOrrh1Zl3JcHU0UaQTB3ea1zubFUJcPDJYsDKK1ZaV2msUOE+acltnwJQGYLzsKtGe4otgGtOA1phr1W8pfFOG+vndYJIUStACSMd2FCs5QdbAJrXf7ZmJbCBDjgh1nUos2dCJIXbdGikJ4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745836794; c=relaxed/simple;
	bh=/kZu/6hC7jVSRxVYg5cXGAd3lB/MnslyxXCyQpsts4Q=;
	h=To:Subject:From:Message-Id:Date; b=DL1fSoKK+NTjB/ZJMERZnQzC5e8iqTsg6q8tX0Fy3PX1Sbav5RJ9Pw6R2gEC7jXK9e17bdKIJaw9d1DFkb86QDCEjF517L8nv2tUD/f7pf78OLonMBZIAfwbQVcpvn7fgU3+i/siP1JMot3gguPiIVGKHiafGIBoeK/TGo0iwS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T26nnYN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T26nnYN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8F4C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745836793;
	bh=/kZu/6hC7jVSRxVYg5cXGAd3lB/MnslyxXCyQpsts4Q=;
	h=To:Subject:From:Date:From;
	b=T26nnYN/3e/MzgjTffHtA3fljkXum2SBqJk2/UcclcvER6VnI4yptKUeHbEgebc42
	 +ScmTlPkb8ZIYzj92HmFk0Dl/vU0LkLFHMhWgasmaj+4PJ9uacA7DUQWsxZ/CqPP6f
	 PpnekuNOW4tiYB1smt0ZILr+Ite7F6qpdLP6/saVNjh27JBA660ZxNKBX4JqCgXvfH
	 YoMBTYGOl3Ux3CI6hXCuUpUYUFyzQUBz+kOkeJ9GQJ7jdcwu/7LTQZk99CJKzEQaHQ
	 szcAAltoRjlLh4ibVoHw3V7vD/kLjoD6rh3N5Bk6isWeGMdY/5zqHOdDLSHcZJuMwW
	 QPFrOPQr5NLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F461C369D3
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174583679357.24754.18037405316281470625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a41cd8e579dab70d0df1d37ee54df944816ec2e109afe212d7ab21d20efd043
Date: Mon, 28 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745836793
