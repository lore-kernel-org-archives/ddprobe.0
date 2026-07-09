Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77B2F449988
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783622914; cv=none; b=mQ4wL3K2NDpN0vloCUL8aFUy1/iNuyGTLNVIktNtG2t85ncarPy0AKspo43s90tCpDnh+l+xEfZG9odb9seIS19xSfgrrxjAQV61rnmW/xSYTIJ1uRNpY7vcWTAXDTIA5oftsS46zepSOehM3xEWzH1SH2fJi9v5TmBp5aD1/Dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783622914; c=relaxed/simple;
	bh=9mXWMeawf+6KjHxqjs0bvcRZgtdqdHgJw4GaH8ux+Rs=;
	h=To:Subject:From:Message-Id:Date; b=FtvGE2Cg7bQnOjl72pO/UboA4ZC7jITd7bOo7qQf7PkjnrDjvBeDkpsLeAMTNf1yBrx7By3qhWQA6FF8KYHhVGcMv8GXvVbv3WVdqSJi5yoyTKodUxXKuG2NsdnHdB+V+ggbCy/1kIVlc6BaFcQbkopteZzV7xT+2+2B4Plvhd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMpIYHXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMpIYHXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC356C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783622913;
	bh=9mXWMeawf+6KjHxqjs0bvcRZgtdqdHgJw4GaH8ux+Rs=;
	h=To:Subject:From:Date:From;
	b=ZMpIYHXyI2/KzmHFqB0qUbaAhoXkR+y1enxaQj0F1OIOdJYbZnF3YQOgffoe+IjaX
	 Te9nH0GuIRcU3V2LFG6wKTqRK/3NPUXRxaE6Fg/ohoqbEfY11aV5SMIEA5VgARmYgI
	 IOejUnTjzXK1oXeELG+1P2za8vhZYN/jz5LuYhlocaEgfLBmESobLYtbKv6IGSuNz1
	 qOuONRcfZq+i/H2x7nL8Pu/1r18aU02uxXZrGh9bGXOp82+MOOsfCUcJ60kyR5KyPO
	 5WKYSvW4jJvAbT/KqRtYDTb7S6syW+nSeBEqGhFp0B9kyb3//cOk7KZNPKHWoGlAQZ
	 3FD8ssTLRX6Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1FAC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362291368.614.3817530358642369469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5846282fa1b938519f866006e3fa011defde2d6d3f2875f6f3153c1cf772f04a
Date: Thu, 09 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783622913
