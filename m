Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A4E265606
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761274794; cv=none; b=J9KQRUFyNSHxrHYFmHiIhLhHxQsdHoHR3Fc4TyuLWE3Z0ygVCC/3J6q7WOypg2o/Sf6Bl5OmiFdhRgpjG2QZB5KL9GCx3UCLmFZlfT4K+MkTC8U4xFv2RONJj1jHJ6hIuGoer71o2z+6p+4v2AqTM5uvGUt1o2v7ojV9+8hPjUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761274794; c=relaxed/simple;
	bh=tVq4MAyX2b7p50c/SaYci3i1y7Eun0iYXK+5jrh6UX0=;
	h=To:Subject:From:Message-Id:Date; b=RrCVb44qun0f+Vob3m3/CUFCaWaC19j8cKePaIsfv9wTqwzpvXm+WBAVa5Y7fZREclUTgvACxw4IKUmQtFloQQxRTYxEnqFFHMFTyAQrF1RbFFHLgxhpCoIKsM+1+Nd4rjAsBuqr+pY+zdPUwqnMndf1lFP0KuThwFhqha8NihQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHYl//VQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHYl//VQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F78CC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761274793;
	bh=tVq4MAyX2b7p50c/SaYci3i1y7Eun0iYXK+5jrh6UX0=;
	h=To:Subject:From:Date:From;
	b=hHYl//VQl4ZrY9jb5OVrx5b3pq0LUn2IH7hNz6eQYdrm0WCXvHa14kqJMeCCHjBXd
	 CRJ50/zsCYPTDwg8VQQ6eHwMLAJpDtLggsWX/4APT+AL63wN9nEuVN+JC1dD1nqSB9
	 EgvJ5usmF1ajIfVhjFQWLTxazuDOY4WDYqFDaNwwGu46tOfDGgQ83Wi/TODc3xKnIo
	 7/ie0aKKcmmge/VN+B6WCr+roht7mxYY0TzJjVXYKlUiiZwwGwrPga8t6CCYoP7Jdd
	 QNJyIp+VDsh7F1Ccq/A5OCj3FL7L0VxIC833EDK0fik3EkcdI0NLx23oj2EtW47MtL
	 jx0AgDJtKrtTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F33ACCD193
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176127479357.24759.15177909560911830265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ee251ba9652060e15cfd17a19cc14b920801907a91789878b1698eece5a049a
Date: Fri, 24 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761274793
