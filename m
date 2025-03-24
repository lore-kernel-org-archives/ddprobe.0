Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6171C84DD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742847594; cv=none; b=bkMWmAsNkuHthT/t2eKSAQ+HL4QmWzeMELtpkVhNJ4UmbYj5nS0f330Ex+p/sBrq/xwNyEzd1FHt3cV+/zUEyNW48W2xkCCAmdVN6XVMNVl8NRyjVQO/5ItbdTJ3+bX8VK37GS36M7/yvU4oMUrsNpyapYus8Djcds+blSKj/do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742847594; c=relaxed/simple;
	bh=7EvyuuY/n+KrTS71gYtQkHAliXfbf0+3EXJtxLdSjk4=;
	h=To:Subject:From:Message-Id:Date; b=qdqho7X5HOnWMrj43pwVyxGRPKMIGLJBfWJXslChxXWFgHHmWdlN5/E9EbGia+fgkk82WKudSZwyJa1sxzQI5pOy/I4RFoDrR2gocnkL1PfJOXXhRKnPWv0FnbyyLbu57jiGcIOZzb6xO3iMbOyjM237Tz8BWS/LKmsxmrl9prw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWeSbG7M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWeSbG7M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B317BC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742847593;
	bh=7EvyuuY/n+KrTS71gYtQkHAliXfbf0+3EXJtxLdSjk4=;
	h=To:Subject:From:Date:From;
	b=MWeSbG7MHOKDbzvx7IoyhdWpJB+nO/hdvgS3XMsI26Q5Ibj+tB6HPeyhRw1g3CpIN
	 Ky+D7+Kx5bs6BgP9osajOzpfblshvxl5hF3nt18VUnwcZWwHCGbtxFMcopUpDGPsVT
	 f0DtWqB9yflHVPKGwu+rzLR0WLodSCbE1o7WK+ELMB2J4o578RPbxJDiplbnC0BGHi
	 6ZRxenwHXRpZ3jtsif5qpAY29qV8du2GK4J9DYnNEgZvwcQGRwzmxZNhiYLUNuH/tj
	 85mU1FsjkChHE/gNpkBKVCH1ffQE5VUeM9CT8Ty4o17bu8VhHhXN+S7hEX6u2WX1ai
	 Gwu5usi5qrSGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A03C3C36005
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284759364.666.16556651368471865203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d18e4d5865174a7c4b7b7141fc2313b0c3c3167945ad4aba7f4e3ea5ac41c198
Date: Mon, 24 Mar 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742847593
