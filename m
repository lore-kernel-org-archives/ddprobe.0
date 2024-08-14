Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC2E7346D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723671954; cv=none; b=UloHP0YD2G8Ziq7w6fQZP7B73oZFEADM6ksszBG6KAGQcHqcOTiki5LDbXBimERyPAEbT2xTwBRCZWwOv0YV8k9Q3TOOUrYl80mfZYgHAJBAwKmr/eiXPB1trFkyhQkNwI0yFBggvFN//wx5XnCy0DpdCtsyQ3E0xzWwTFOjDlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723671954; c=relaxed/simple;
	bh=KegRENCMnjITv4xvbHv8cIN7ocwrFEVCXHuyXf6QX9E=;
	h=To:Subject:From:Message-Id:Date; b=hBMcR1EbfQhpC0quA9Js2yBcgf1LLet+bQs595akF3Xl78jxXH0YW03QLgwkVFE1QcKcwkG7fg7cZ/A6Tf3VUGSVgWIe7JUzf024C1xPTx5MERtqDGE7tyYsET9Kms3bv7ss+7lVUVUO03JKWVXTfSC2iBVbHuJy3MWA+1PYJmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI/LaTXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI/LaTXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8BFC116B1
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723671953;
	bh=KegRENCMnjITv4xvbHv8cIN7ocwrFEVCXHuyXf6QX9E=;
	h=To:Subject:From:Date:From;
	b=tI/LaTXD1zod6okofHDYt2fGM9l7je9HVq5qDaRB4rpFAuCWiXdTJ2X2Gw33JSwXR
	 5ynxWWKo5k9N4PozTqmMGvTw3UvT9El6UFEbhzA0PZucuO45a2Un/x35U1u+Ao0Kvq
	 oCFt5opz11saaw673eXYPNDLKpGXlwzfJE3M5m3TIqhUr1jV+opGFHtDBN2zbWjQwI
	 tP79w2d1DXWVXMbM5jkEhxUZkI7YXVvdQiWDWx84iE5Skc+O6xzmRIgNuzXYs5ZoqN
	 QqhePjjrtKvyTyHD5IsUVFhOyoKX9F03JMWETOVVEFeWuzL3757zcf5watMQ6p/qgF
	 NGF5EX37zBhMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B084C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172367195362.4928.9653120774224023714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389f8b2961ac0740167d8de06a50e0c845fa4c321e104f772b032f0f0bddf961
Date: Wed, 14 Aug 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723671953
