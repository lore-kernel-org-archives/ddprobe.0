Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE25199E9A
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742160594; cv=none; b=NPxu5azkD2Ng7IS3rrw7u6ZyKcz2SzCJQ3yzQ+pMW+36AH9LmR2ibVdd1oLMW1suVmbR9C0F2IBFxYCSHn4ynF+/QWp26WnhvptI1/sD/mw1BATFsndwhizT1DTTjHdVqsma3P98VQO/IaanDBZYr+H1BwGrZN3WdL0C+l18AUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742160594; c=relaxed/simple;
	bh=qB+AacStcJFLCtPHwIY0b+coMwi3+6vR7gjEOE3/n2M=;
	h=To:Subject:From:Message-Id:Date; b=WifZnVSlFfY3pL39u612wzf9n/fVAYF6IdOLAiog8hW3LcaRY8a/Oa3sSSB+ZYpZyTIGC4A/0UE5aO0MqULi6jCoBkNlg/nBmhyc166kCoMPVxqZe19wef6pboLM1XDylTqM6gBqklX7GWnQ25soHuFuQoN1T1D7GnbfhmYcpA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE2E8fn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE2E8fn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF90BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742160593;
	bh=qB+AacStcJFLCtPHwIY0b+coMwi3+6vR7gjEOE3/n2M=;
	h=To:Subject:From:Date:From;
	b=aE2E8fn95jK+FSle4JTRL5fQ/N14IgZOtwCJp4q/uKSYz0CDboPuEVojYi56TB3wD
	 wGBg7gRY3nUGWHqLdXB8ZEYTKw4kdB4V3YFDRTBIn9p3hB4iy0K0R8eNSJwTx52yrX
	 TLIYJzjcX2Y9DQ6meNr3JTxNZ4qEMZBz/EhLc7NgMTlqJ9dw4BYzhHSI0J4g7JF+Iq
	 9QpcBuI8S+Dwi5LFfF07zmHbG91i/8fyETfTYCBGRwxbJJRoHuFTX4M72nnxomfIHQ
	 nRbbkPOvFaiRZ0APFGO/amadBQJQlDXXq7YBi9cJAaX1ZM6iMtu3Qr8qiKamkfypUo
	 op/SUquR3BU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993A7C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174216059361.24989.4570522255641083738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952d81780d327b27cd520f212b071d1531564cfbb7aaf550ab549c2594316e8c
Date: Sun, 16 Mar 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742160593
