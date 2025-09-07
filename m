Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202161F790F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757246994; cv=none; b=Xyb3wT+RJIZuv15/9HWzR/vKBoXkYlyu3Hoxw5y5zAx8zSB9z+6KJtaA2/PBKXv1dCFVsNgx8GbhLYUkaEc5oc2k3pdT8QQKlKBQHQFHj3WVvb9D/V4I7QuHiXCSPsuy0WLEru284T0UA8Pd6e0mKpFg9bEvKWdZtpeLJL/Qnx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757246994; c=relaxed/simple;
	bh=gfO/qWWItSZSnxaf1AcOkCGjr54HqYcL4GRC/5RAZQ0=;
	h=To:Subject:From:Message-Id:Date; b=VocK+j78R3F/xHgPKc9UxlN1iBapkYOiXMO5FWSzPrNQ72XnPw/HtxQIQ9pLA/yghXdiRt+C0ojJfd++LYXU0BzvieYRrQkUQUbCG0OdNBnumqHB7Lz/0+eiX3CKvEu8to0GacWa/8HNVJtFXcOb1YuvrLGf8w6ZSUuQqTEPgsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaIxT+Jg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaIxT+Jg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB25C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757246993;
	bh=gfO/qWWItSZSnxaf1AcOkCGjr54HqYcL4GRC/5RAZQ0=;
	h=To:Subject:From:Date:From;
	b=eaIxT+Jgz/2dlf6EkRUjIkzdi5FTmknporPRQqwpk7glRPw+kyc7AzWN4mZHSSvdC
	 ez11lilzm4UCWA5bBgxHMfPoy+dKE65nOZLi2oPeWSmwu5hlb7oGibyfK1+PKSoB4/
	 ye1ivdoXZ/TOls9JCoWQZw0Yeqzx4l42HCmFBDHDAAqBkpsLku3479NcEUZoz1UnA1
	 gXJGNUXOFCtxToIv+uKi3/1cPQjkWqaBqc7fKi22CamjNkO2uzsNrP+i2Dy1Pc+orr
	 Z/yXEvXQw1uUiIgKrcXwubPqum7Gl0Qoy8GIV0Kw3IgUIqGWNzt/LCPo9hv7qiJKAw
	 C3+d5qjy8vUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91690CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175724699357.7074.11393800412290711808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b482aa95a49340b2a41d4f761306e9bd129c2d3025e504966a07682e01d53f25
Date: Sun, 07 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757246993
