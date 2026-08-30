Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E036333030F
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788121233; cv=none; b=R17pc92h/bZ1GuaGT1IXDdhgF6wzZqKXRshFrnFsDoU+Bh8kT0y1xqIbwjdDDuxKEcPDaosRE2HXBmll/7PUx4+fKxjXQQvWqfolMtcPnXg2lUQQyG03n4N+lO3TQQ0jOJvdHRGXyzjXkrCFwIo3xGOyrg1adfHP+UlMhgPIhPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788121233; c=relaxed/simple;
	bh=5C3QkkKvs8nlh3+jc8WxWu1U2TvAS1QYmaorAQQ/DM0=;
	h=To:Subject:From:Message-Id:Date; b=XhPS+e70mbSqFRtzQyAs9YiJhxQIFRSJWu9wozPCM1TW4gJqvvY5PdY1o8+nXs9F6J9S6ThYzgBKEStqrFCi3t7o9xJV+yWhNIEUIq555/mq0U2LtxOm+hHGfXEvS+TIDb+UUoUfLdO8Zq/hy7YIH+Takkf4JzOrhpGIJT42XuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2Fmy+kB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2Fmy+kB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC264C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788121233;
	bh=5C3QkkKvs8nlh3+jc8WxWu1U2TvAS1QYmaorAQQ/DM0=;
	h=To:Subject:From:Date:From;
	b=t2Fmy+kB2ZtdK9wPY17pyDXqxANzLDIJ9/TTXPsr4ZbeeQhwRWX+QdKqL1R1BbFRP
	 9cW5NZW1l03xUSkIZqXsYKgSxLTyD6OpzlPI+fwYPOmw4NdpU342EPgxEuXhLqNlgo
	 bfVTJPCPtThqKNm7ovbPuvKSofb94wKxOtSBNwseEn+1FvPs6MnmpDCKbnTSwoaKgi
	 W0fRU5RQYv8CG8HEbIRcRgoreqsm2bklopTku7dEsC9eODiw0lCI3vl2vRwAVzm0RK
	 o/4yLDfSq3C09fSovOJ8l+4Y4R9MQWSn7kkhqKC/qNozA9XuSILY8jBheST8sDmSsw
	 R2skKD+IB7A/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA702C61DEB
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178812123368.8933.6648076081231363315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbc1120f512bed2d640dff726303743776641f1c10fded5ccd26e8f5c9472fe
Date: Sun, 30 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788121233
