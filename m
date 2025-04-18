Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A9C286250
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744993794; cv=none; b=i+VcXl/nEh3cuUn+RWC/eYCNMtX12jABif9ItrjMz1xxa/I1EP2XYMxFfoaz0Dh7sg4p07KDel2S1qZxjK2rD6ZK/DGpVYj3NG48gXmTlGY094qkEpcoe5spFNlW2WEECr/Adi5jt+6hjz6T58jDmbcBROrN8PMOwSMpZIFNwCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744993794; c=relaxed/simple;
	bh=CuVy64E2+s6xbDYJuyA8VZ7cWPwFEpKsccNa7nSgIuQ=;
	h=To:Subject:From:Message-Id:Date; b=WFDMQMxnxVKE8lifRHECLce1uvSqQHYDagMbdAbhWP8kWTKtgF9gUwyVHKrl1hOWiA0080xAEFZY4WAo0S/p6nACaWnWMpM2S0vLTp4XAleHI/Jt27OiAixDzvxfnWdeWWdj7r4J3gONo+i6TpjqqnCOnBuvg8BP5OtHXZ7TrFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCR/bS+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCR/bS+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7025C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744993793;
	bh=CuVy64E2+s6xbDYJuyA8VZ7cWPwFEpKsccNa7nSgIuQ=;
	h=To:Subject:From:Date:From;
	b=KCR/bS+jvoaS2cPqfGIXPhvNj8HLKjHu+DomazvNy9qNgS1MhErCqgyfqEBs3Gf5y
	 w/V94CW8vFMIAi2ZeUmoskqE5Mjb/tWNjBRUQRrzZadKUDsXSoMYvkWkiydpxaa6Kz
	 mVMul1hiybVDWeBxojrPeQ4qLSj4t0wUHhXTFyq7HPqxlWmf8Zje7WQ15RzQNgT/Yi
	 18TXykYnlWsKMdRGaST2GzVhlCzQQp/QTBbwKMQnRI0PsCowxrwtx4N9wDCdH3d++M
	 7rByERIIf7oytQwrF34tvPAYX/CJsLcHxrU47oZ7Ad7jdKmhv5nPKK6AQztv3rUjQo
	 upDX2gOxoThDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11F6C369CF
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499379371.11857.4756739106264988881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d310ffe918557951ed6e4837a79a637309a7bc29d99b92b59d62e09ab219f877
Date: Fri, 18 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744993793
