Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAAC43CA4B1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774394694; cv=none; b=muxa83eRLUa9f6twaK16kpoOYPmrEZoWFGe7mKe3F/hjCtlberu0an5oojCG3xGdFqHWgdkE5sExWvcwrpgKpk5q+C9F/dDqsJ+SanIF8xVEg8V+CdCJy+WJNWZP8Ys/QQoZRY/JF7JKuhDsDQpbRYkuC1ZRRLpHQJJHiKDlUyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774394694; c=relaxed/simple;
	bh=dczwAQnJJM/cfkbw4Kfay2swGagg6L4OLNYGRU07fok=;
	h=To:Subject:From:Message-Id:Date; b=d4uKgypunG57wJ9xBCyiGHCgBD/nlNN1bwCHLRPlNFtqWPFbuKM9wWMsGASjjDwYfLFtnSF8q56s4W5jfisd9/4kC8WsGHa+Zw1jdQRQE3pRxDT78J1+h7FBgmfA1BOQOCNzEfb2m8uMup2BtlPHKqD0W25lVp+btQGaUlAIK0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK8OUoMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK8OUoMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0507C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774394693;
	bh=dczwAQnJJM/cfkbw4Kfay2swGagg6L4OLNYGRU07fok=;
	h=To:Subject:From:Date:From;
	b=GK8OUoMTkhfizX6qbWpEo9sH65bcqRQAJ6PEVtxbz1EOt37ORAOh2ijq7Dd/+2ZnZ
	 uHu/HDUn7zWfTuZxZFcEcqUgLwWFGYezE47SoV73C7RIuPGoSbyTTZ56donhqEbQty
	 SFUauTBxX94EjAQ1/yaAzqncrrECWxU4BpAKw8kC23LcPkYq4Zhsds59gIpSJ3F8pb
	 fyqBx359777x1RuP8EYchHWi8NhT1Vt90nq8OSVhHnD657hVSFc4HVVlKUxYxkEDD6
	 Us1z8NpGLn9JLup41fJAKBRsDZHjxospmR6xLZZPkWt8hCu7jPhtOqDdiy2TA+0sW7
	 Fr2vY4/MpX1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F05F532E7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439469358.451.2811805763580408148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee6138580ae8b1000b23d6e0f5e61ba273a38c9ffc59bc8045aa742b81b9294
Date: Tue, 24 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774394693
