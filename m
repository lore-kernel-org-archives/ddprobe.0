Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C38377023
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783998514; cv=none; b=J543cVaPMlQuUKL/qUvk2bgbXlFG55Nk1VLTqtAJaL/BpOTmlaJWNKFuwGaj/X2Ctg91/LS6xzuE/sQv+I8gq1HgTbT+G0ZpwurbHpLSb+eQDU8+u4ITrFMQRPmcOtFGkQmS8bDotR6fGyiMXmnzl3ccLFiL5Tv/l4ZUgB2Xn68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783998514; c=relaxed/simple;
	bh=i6my//LFZTaj00Pmfe3zfSxX79ROaN+NhEbqy7pOBUA=;
	h=To:Subject:From:Message-Id:Date; b=cWy+iAEqUh3MeTM9TDeVMxMp9MWXtadf30aq8/Tv/4wntzIyDyIbdcbnD7wu5LB4dFWlJ6jC8oY5OewvjjOgOKz1Vfl54nSNGkGneiHxj2kMbUgsjSvG3Y9wIcNTNJtpvh71ktyDDeVf2cnTt7e1eCzx+EUR4yoQQUMUC/LZmvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3gvZnh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3gvZnh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F73C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783998513;
	bh=i6my//LFZTaj00Pmfe3zfSxX79ROaN+NhEbqy7pOBUA=;
	h=To:Subject:From:Date:From;
	b=U3gvZnh+ZFqRgeYwJ/npDrkXKPGTvd5XH9qHDnUYVM4VxMnknbAgKV02kVXbERF9v
	 PNG5A22tmaqfDGdSDvApMJ0MoE2LHDsyheS15BuPpGV/DXPwgBefDhV01HOn2OINJP
	 aCbRr41GhWqhkxZYVQqbq3H4csnqRSu0G2y9GGYbxS0DXygREKmQdLgy/yoNaVP3U0
	 CJ7osdvVkjpZXQcRC/B3kcIcfP9DxlCJkuM7CDVCIOSgVERqh+561cfMAgPxJw7sT3
	 q2VX2SU3g9nCx6l22MvWK+pu45+RHgiyYZGxBlNSy9tyO9yP/akji2OL3xx0iQj8y5
	 rVhPYLKXFh96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF265C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399851368.5314.7364684204061293006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8195aa84878094b7da357d7133329a70170abfbea6d5ae107e51008e548bedd
Date: Tue, 14 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783998513
