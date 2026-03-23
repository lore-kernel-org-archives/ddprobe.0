Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C97F38B145
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774264494; cv=none; b=Muq9YEo71iTStOTKY7KsMj29F/pqAM9Bl77+vMjXlSJwgrT4Xt2RvgoUC5WY6FbmFvzbXdpoFv8kMBDSxkcnQja4fPdged9Isur0HAjOsk7AJajPo9pdqEoEKvi742EJNMKIryoiTMgDv4i5Ydjmv9w2f2I6UAx6IG9VFY53vOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774264494; c=relaxed/simple;
	bh=b4f/wra2cY6HPCV9Khv1fiPEvVEdV0LQvstZ/YUoavo=;
	h=To:Subject:From:Message-Id:Date; b=UgOe58/+CRWJpc4sDMPCNFWvRl4D4J2K+pFWgcoEHAC1/R2r/dW9pZvfRu5O0mHUiiGK1LywiEhhWt9vs5lgIhqWlKiGiU1RDcGFdGRWhnB1T3KPGg+1DlTMykHHvaVVYSJtIGI9v56SI7TQlFECwz1uNawR1mRPzN7idsvI5DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCWJWqsf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCWJWqsf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D5CC2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774264493;
	bh=b4f/wra2cY6HPCV9Khv1fiPEvVEdV0LQvstZ/YUoavo=;
	h=To:Subject:From:Date:From;
	b=qCWJWqsf4QF+Kl92atLnbqkcLuPaUGlHXXR4KkQACti/uiTIR3K+a+r27I0nwRwWO
	 lVoAIrGxx5npApPjpRjKy9A9WBMSHfoI6MSrNIFhj5A0aWYIP2ym94OAIpdWgB7N6R
	 Jc4yqu4jW/if/SZOUWz1pBvhTC0LnMqLl2cCRZfwzLn+P5vom48yovvj7dFZnJb8iV
	 Ls+OS7UvOID/69FONMnG5Xw+deb3MkiUn/Bwf4IPTkIDYdOLQD9MwCkYb/KqDGyRYu
	 Cm5sbHoUro7F8R/430KdWQdmJQNOiXeVWQWAARq5GLrAeZ/ui+7NFD+G/NyCLUVGVs
	 86hNdeiQyB9Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93217EC01C9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426449359.30652.18035499669533438207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538da70db216c44cc1e694421ae9d2f248e8535cf17151a4a96dc7d8a1f5d615
Date: Mon, 23 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774264493
