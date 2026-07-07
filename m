Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB243F8886
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783428514; cv=none; b=A+5vDd+fShNM54wvnzWJL7XHNJbwzWgMbDUPnVMIArv2FiTDSY5RFAsIVsInnDI4N8/FbJ5Wmyu8UO4SxG6TFHFHmG8oR/lcG/7vt9Gp5V/O38Yx1p9jHZwHtWLjuqECMN5kAekUUdtEoB+9Y4HuHm2LUG5Ua19aCKtuaCw1fv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783428514; c=relaxed/simple;
	bh=2zgFeZPp6ujx6kxgEWYlXNaTTifHS7aGYyUpVnboQ3M=;
	h=To:Subject:From:Message-Id:Date; b=t9n/iJy62+c5QQCsX1+BcaO1O63jKWEg39/q71iGbkR75UNaU3CzV9aagodcRRQN3htUBCUhE5ISWWSgT7wxd7jSY4bd7YgYdb0USnzg/DOv2C1J8X30Ow5oMxaK8Ov22yV0wodAHwTNM9nLPThCCwoVnW25veyqb5zY9ypK7Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNGro55K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNGro55K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFFFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783428513;
	bh=2zgFeZPp6ujx6kxgEWYlXNaTTifHS7aGYyUpVnboQ3M=;
	h=To:Subject:From:Date:From;
	b=WNGro55K9ziTSC/sUle8HwlSRse3TaQiSMuXIrltjO9ZPn1mjdlUdpIzHAb3jjJAh
	 SU+n/b7RWuohQQEWUAYUuFX8QOHoc6MF+N0B66RXIAGI4WQayAl8JzMQCNOER/CZsX
	 ul44FBsD6D/2S2uqJ8pToJ89JbeMEKlhtZsZm109n0J4CqQ3EKJEhtnnwOK8VqdXIm
	 fp8gdQHQ1CHcFyobHW96eu8a/pFSEYv7b5SL+/SWH0ofcWMbxsoBg1XN7Q0knD0uXK
	 CYXQdgii2u6V+M9a9haXFEbmUraVHHZQ5udEf1anE+1msw8mDSkvH/lXEAKz2QIkhG
	 YXhIl5Vaj6nFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9828C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 12:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342851368.23136.15056580143084193809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d2c9304adc2db9df4d1c2154ce6f41ca52fc17e1afd351888905f06a0866a5
Date: Tue, 07 Jul 2026 12:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783428513
