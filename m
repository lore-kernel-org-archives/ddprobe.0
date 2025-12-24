Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4D222B8AB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766597634; cv=none; b=aJ2Oedb//4n7NfKRFXFQ0WfkPtg3styjcoI+odj239hYh3B7/TE67v4EIdnIg0B3BHxmqqNAF5W69BkWYJUbeG+FRUpoXBo/TYGpjSrDL8BzxfJ8ASin50OGjgG0NjuO3YOpLEeoXLgNwgnxtZm2y3JlGfSgy5E/dZVZ8iZeyMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766597634; c=relaxed/simple;
	bh=FyllnzGSpIQyQSYg8QAGB27uIVjw8vMsO1cJ6o/GVe4=;
	h=To:Subject:From:Message-Id:Date; b=s/AjwNsVU4LvPBxeE/uir9ysT/OVQR6T//PM4T6L55lmz+ms/4kvQQsMKyQuC29/v/AvkY+3ai+Xr+N/IDNYlxdu3o8pRNfCp39iySeP9eh0OPFQRwF4BaWRkOiocmm8XkksvRSZmRjp63Skjy5gkJIfTPyOQkpYFZmwK+mARIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOCkc/DZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOCkc/DZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66E7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766597633;
	bh=FyllnzGSpIQyQSYg8QAGB27uIVjw8vMsO1cJ6o/GVe4=;
	h=To:Subject:From:Date:From;
	b=oOCkc/DZQ25DuVeeew7inbf0KLflhF8dUlrS0Zxmi77wRVTt+5DrFrwvu3sgtkKoG
	 MfDpKPryjlKFfZCzkVQCVqSUudpWDSc6ZqX5ufHyzf808P3tbfTqbh0Uh7WD55ie/L
	 qo/x9171Sbd/XPRmLVYvkn5TjWbJFAM1Y7i0C3RffqFXcv78TXbaWOht/Qo5PKgIbU
	 jBAPeqIbGfHyW1ajzRRFW/Do6Rxvm7fI4QFph2YSWslsQ2Are5CKuDTGiZo547cN2k
	 cLZzUeSk5zTBzNL39ZfZAu1wf4XGXrAlhdgbcWjhv6iRdEh3Ge5v9ZRvMQdxNQQmAt
	 JtFSQuUYCqL6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DABE75450
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659763357.32685.3862720195920581303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dea286fe8134f657ecd5b98e1650152b118c507514599f27c132bb0c4d36c40
Date: Wed, 24 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766597633
