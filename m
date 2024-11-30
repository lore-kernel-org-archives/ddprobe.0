Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE34517BD3
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732992353; cv=none; b=ohwC//8VhzVnpTMz/67yyRBwFl0XbZpiUW2MfW6tGPINuP+kIiee00Z9F4eGOv/fMgxU/WfRV0Q+/Icrl6IUIiM/8DaWGbrAytLkRRWLvVHjzsZz78QovHMWCVYkpR+3YWvF3ChLgNd6cqbMhsEhi0Np/83KcP/nFcDeaAAjRUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732992353; c=relaxed/simple;
	bh=k4LbOtVeIFqrUGMstwqor/ap7+Xo1nuTPQZoqaQ1e8I=;
	h=To:Subject:From:Message-Id:Date; b=eXalxFtNm7AM0WCFUHol49f5gSwqjpWL1g3aX/XfquVU7ztXGPrr32PKC4p/PgqPsN7HeXvZnRhAGp5fT7Q4W7VNKOdRb0xaUfVUJ4+lCpQczsNvsuRZI3kD2GkbUY5Rg3LYQ2jT/munhVDXaM1UEmaDveJ8Y8MzVY2787Ky81M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgbOPKCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgbOPKCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB9AC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732992353;
	bh=k4LbOtVeIFqrUGMstwqor/ap7+Xo1nuTPQZoqaQ1e8I=;
	h=To:Subject:From:Date:From;
	b=TgbOPKCC0eFma0jI1XoIjBGjMrtJWO09ifR8hS8lZNZLIrKFuDnn4Qvu3Dsh8chhq
	 sSMv9LQGpNkaS3VYLaXZWTctdLiWiBTfabx3kO6GwZXXU4vLA8LYIBgeDhG+tueRtK
	 OVNWZaFAI5v6IfFAHvl6zLYzsJX9O21lD0whjibHbagb0sGhCd+Os/fZBNllhU2xz1
	 lZPVAqzq7zsXrMlL6CepglV8MtEzs1BxyeKQSC4la3RCbWcWYRxVj7tP0Cvp3pkdqq
	 HkvR34jN7Oa62YKucNJjlDxIk7+yQIW++RLbqEzhrjzRq3yclxaqS84zamZIdrwwW2
	 VFYu+dvIPUB+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F00D735F2
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299235359.17767.17781178759776665964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ecae56457053fe6d23dc96311318c90887eb8620d7f5b7e98c8e7a284488fd
Date: Sat, 30 Nov 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732992353
