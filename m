Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0612E7E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749437995; cv=none; b=NzBFxmwFA8ziFERx0vwXYRXGgJ5R8oBVfRYQe/ofAiqqY37lfYCmXCWx+YpzoIHYHvjGipENGM3zGhh84St+d4R7KJxxkgKcwC5R741OXgldz/nYCQlvgME6+TxpoqOsUZKmbLjDXQNej7AsjpBp9y/YgLhTxsofQzeMhnId8hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749437995; c=relaxed/simple;
	bh=AQV3jDJIK1VooIanpGRi8oDziU5UVsqURWnv6x2jtmY=;
	h=To:Subject:From:Message-Id:Date; b=H2393KNNfoIDyNOqryI77y5tQPpoS0nXcZqrOSAKBzIKWHCWp77v/L/qUp2kwkQlf7p8n79cw3sLB+jxw+Pjd2AOPfCC9eR5TPbIMe0K+rf/eQKuLDpU51Ipz2DEtRkmz1GX/vX2HF3xTfZQMI4JcB5m+Y4TfJOSh/h/rhLRo3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKrG6+3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKrG6+3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D1C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749437993;
	bh=AQV3jDJIK1VooIanpGRi8oDziU5UVsqURWnv6x2jtmY=;
	h=To:Subject:From:Date:From;
	b=oKrG6+3uuy2hqBt3RYW9rouU9SMZCMeFt6H6TnthXXNd06vqUcqJmlSrmh0autJRG
	 MybBu9oIVyb/VVpr0Xyla2sgM3s/U6fznh76ULPR2EKlQ5ax2lg53If9CIfOLRBFRW
	 4s59lMiDqrUeB0BDoHMa0l2wFtM696OOXateEukHc8Kd2yVFTqKzDkkMkaIpKL5WXB
	 iinRq2WnSmru7y5RtBjyRtq0YKbw7K4ZUjjp5bOlpeC8sAQIF9kYS4WeSaDNp6AjcN
	 Iv0ahz4oBFpTkGeTlMtbBunhBfTG34jKWIFgz0Lu5qrMaWd3Ac/gn7r5myq3ob1zkY
	 My+tB2pOahBGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F4C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943799357.24421.6467435481740259104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80b1a5aaf468c112e14fcd9a8eae20d773f6cc2c543d6be4a6e16a33f7e9c3a8
Date: Mon, 09 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749437993
