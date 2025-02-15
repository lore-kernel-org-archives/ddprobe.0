Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5F8186E54
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739609934; cv=none; b=NdcOjYtrTrvh1UOZm+RHnNIgcuHXT99uulFAWMhoUVtUrGmFETAIpnS7dp0WjWenQ4XPV1jxZSTF5Oik+U5tEV2Oz3DqQomemy79xsP0qLlMUa9G3j5z7VGzMR79FBKfLCYGZXx5Yi2aQy5Z/yX/LepQMuZFwLztHL+lRcsdPts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739609934; c=relaxed/simple;
	bh=M8JUFd5b9g6Tl5QYazP4n2KcEj+/t1GiCimO7LL59LM=;
	h=To:Subject:From:Message-Id:Date; b=aswjKD9GGqlBPo4ldiAruoSnAEw59BsM+KOWqKkMGGEkKm+8Iigk1CuvbHqHGldu9KcMSuKxOlTw1my2idpe/5Q8nvig7bxp/zpCPALXuu6VxB8dihcHs0t4uGBEUZNqtyz3F5STCNTt8Y6VfenbkWuPjz4TyyX09cGrooAHEUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOxjtw1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOxjtw1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9568C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739609933;
	bh=M8JUFd5b9g6Tl5QYazP4n2KcEj+/t1GiCimO7LL59LM=;
	h=To:Subject:From:Date:From;
	b=cOxjtw1Tb0V8oa5Lsomq6yxDWEqR4ku5/7FM2LNfbmUIRUIrZ9AeHisPkdfZWjULz
	 FC4ajfOXCzRcIQPyFiPQiVmz7qNxAacFM8pT0wV2HYUJoKY1aKqkvDPg13m8+YHou4
	 SXjN0ducBx9TstNzFURea9Dk9oYw4Afm8iCvMFabjlSdPUaY30O8BttTuamyvZwSfv
	 yj5A35wEcCU6xB2Q4DL2bKf8DrgK1DUzkecziuk0TKWZkytmSn3tAMSXcc2a+irXf8
	 6YrYkSGditvdv2p6yFcySFfht+XAYkbVn9nQp5+aQghArG5swyWdnda24U27y3hJhk
	 Cc0tZV9tMDoLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9619EC021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173960993359.21500.1943020658639738655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02be1795d59888e1871fa32165e7ad03d6c88de9e695814d264704963823ba1f
Date: Sat, 15 Feb 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739609933
