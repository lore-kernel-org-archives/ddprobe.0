Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADFD2AD2F
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759697994; cv=none; b=JuVCH/A0SEkWKFypklSEXJJTYZ74nub0snr4YE4EuuTFtQo53YTIRIAPHPpYm5ObQOhad3YGLWB27fINzUT/fukDXGX0BIYUKu4altav+IZnmTqRNyAB4qCLbvEe8rDYTsWJwGWvqsAuWgMaGosAZCIacI2pCuZvPdw/YvSiRJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759697994; c=relaxed/simple;
	bh=fKTDqUYEHGjsCndgobvILeYFyjw4WERyziO/z3oqOlU=;
	h=To:Subject:From:Message-Id:Date; b=cKNu6/IuBb/0I8uroPO7m1gCVb1yLGV2HEbNYeH/4FQYpDwOGFSu1tYbRr2wWTibB5ndBoZs1MIevM75QFypAFhz6rsJRPlfJdMcSGjRkZ3HN8Rl60wvXmF9nEqbLuqVOt2FVewfebRuZbKCFLN5wkjXz8yYngp/5SeJFLk5JhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qcn+Spj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qcn+Spj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7956C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759697993;
	bh=fKTDqUYEHGjsCndgobvILeYFyjw4WERyziO/z3oqOlU=;
	h=To:Subject:From:Date:From;
	b=Qcn+Spj6p78V7xaJogHQOBcM4Pv62Xq0tr7zKFdxUoOr3lacWhNe6e1Tk8AR52qYD
	 lnatYMp2yULWNicpBBLH5wuLjrVuFLS8VTio4G+czEGr5hLeintO9+FUquGwHgB6KB
	 xDqAZxTCGkEDk/mDxyWPVv5vmcymqoJ6mb8ArCWczDPYJbPbYgu9YwUMnRmnYm751r
	 QrfX8VqvvriSnY86Hu5eU6WjH4+IxJvgtClzP9QleFTAZVOsAwOSSXrSAkaEOMDhTS
	 Vr9qVJ8j/z7bqrUr+pY69YpXkz9OhenMlqihdOOKkqEGFXVjpkqtXJWvtYgwhC8CiB
	 9LbjtRHXMB8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D64CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969799358.32628.16814195317008307884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c53528b44a6b9a0773bf9e1660c0ef961d45d165da26950de3448271132793e9
Date: Sun, 05 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759697993
