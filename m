Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304FF3624C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776805054; cv=none; b=qqOQx7Y6THVpeO6r7/9Bu1upBEZ3o9sYb1bG+Zlho1htAdpJs0nqsiiMqBJK+9staUxtqe5VaN4wA+aJKPDyUuM6POPiF/l+dpf3G43XvkpPwxmLJDPyhcC1+2sjiVbFsvrK8feosc5mXCwbkSc+s9rTqNIBrS1VSxr+QTh6TKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776805054; c=relaxed/simple;
	bh=gt7SXAm8VJa8Xjz0vS7TP3eN9bb/qugnt3v8VN3fYs8=;
	h=To:Subject:From:Message-Id:Date; b=TqrMWysodXO89BEIjvyU11SJA4vnkrQp7kb3QSvr+vSn0kIPLeWVDOQCBuPjkHKRNhEk+tL2HiVlgvtlZwTAyyAiKy5vIHj0vqNxJwTyyyse9Vwds9AFFl4TXYqOGkt+CV0SizY4n4W+2ryTlKtD2FKw2XgGfSkK/vJ2lR38NFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVd5uf+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVd5uf+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4FFC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776805053;
	bh=gt7SXAm8VJa8Xjz0vS7TP3eN9bb/qugnt3v8VN3fYs8=;
	h=To:Subject:From:Date:From;
	b=dVd5uf+8YIDlXyZHUY8jzUtFyaMUvSL73b1q7oKDc5FntgmsKobmdNnz6DxYxsWEo
	 r/Rv8nocI3CWLL1nPqI7TfXcGj0yLnMFYDF5TNhdog/h9tIi0Fviux/mprLkM33EnM
	 /oDhty2xyzoHfBxXgddh4yDwGFZWOWUi8RSrvoRgvPrQd6TplRGd6FBPMLtU1+1VP/
	 e6lyvUpkhBDHh4JSQ67acN9hOCdzZMWsDOygqlvd9QkSmPJbGVD0kkLfU7UOg5/Aat
	 rxNvVkJa63d42Gm0SG48gFhD1GdWe55RsCC1ULpePkbeKYR/krsm1a/NoNLlaIBhPZ
	 X5+yLTyIePEUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFFF94CB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680505370.23250.4239095544072470870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa37e5132e8916774a212cd70940121fa2ff8502f81e311006c62f446234bb9f
Date: Tue, 21 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776805053
