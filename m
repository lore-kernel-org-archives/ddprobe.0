Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56A23245A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736875554; cv=none; b=Zmj3u2xD+HcK+o7xCAY8OTqdZ/S9Fs2YTRPtfo2ZFQLGL/GmVgAqiFu5MKtni6p+UsDNDlKqOcpLrvtj4IEYI41BEbp//He2JpFuJiFO+sxFN6T6hH4r82fqHygO4KtSDH6+GYMqrW6Xo3aDbSF0DTyugK6oP/tDsntMUUgGvT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736875554; c=relaxed/simple;
	bh=9GcIXpsN486LcjiZDNLLM4HzpodIq5Bnf8ujqWgtEA4=;
	h=To:Subject:From:Message-Id:Date; b=uOSkiT9vdcEEu3dWxakQGryUDtr9anILvR7DLeXbPO/Z1WkwxRdXOVxpFojGoIM5zRkAERuIPJWy/lfX1o97lephTPI8ZTgaYQjqnl3C9rWpWTo71KqcJ2PWYynanFmVdR+10qqM90enBuzGe5Q4zxg5E+1dLdL/X+/f88am/9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYtXzgTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYtXzgTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C02CCC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736875553;
	bh=9GcIXpsN486LcjiZDNLLM4HzpodIq5Bnf8ujqWgtEA4=;
	h=To:Subject:From:Date:From;
	b=VYtXzgTNmHHuVXjhGLPM4+oYldTYqxy2lhkxQI12VW2b4pWo4Qab9SCnXLGPaBZv5
	 Wpd4+OiTENF1gbbNu6NDpFB/rHa+lYXX58MGWLcof7Ls6kujOMJCJqcKo1GUroamOp
	 kWzQ+6eixzEDFfUbB7H3LYUxQRkaLwx0k433zo6QWFQy5Y/0318QqvHJ/UCekK6J2l
	 HYCwqkawH5ldQXd9vi/kAOecPL8uelNob4A5pUc27h1VFoiQL8TqvfOmTzuawFjYzz
	 ArYQ7HTwzcuUNtdXM2gTtCp8NeJ3NZ552+T1LoOcRgLtJMfUwLQpqRn1NjJe0FWWVw
	 1fHqU5PESxoDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91907C02185
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687555358.10919.202273591066039498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001959fcab820e8a5ddf26fa438033e5a215f271ae90fa862a71f821aa705150
Date: Tue, 14 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736875553
