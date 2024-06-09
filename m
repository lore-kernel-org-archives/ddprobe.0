Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5341518B1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717963043; cv=none; b=UzBIf8Thov1Gm4FUNgiDTupyHj6YacLzs1eTME6rMP2Y6qSS8zCe7q4fQL2WzCuXJofOacqnbxqwJ8T8+DQmw9d2lre58/GY8NsW55TV9JGG2SJv5IyzMOjbweTryPqnXY7uIP3gY1kbJTthon/Nbj0uHUtMHIOziogK8uFdj8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717963043; c=relaxed/simple;
	bh=q9DdW18KyN1pSMi9B7MJ1JMN20Vwtc3ZvPNtxsKXpyE=;
	h=To:Subject:From:Message-Id:Date; b=A2RRF3rkGuQR4n5E2uepcICgoFqNb7KVodz77uK/hMwn9tgpjy+yZwac37Bb+5Y7G1+fE9vS6hg9hec6g6+22EZI4e0hvFDL3IOwpcLnmshRl0JF6jq1OB6q5Jtbhz0CgZD7vSyDAzzJG41//QJ9z4F8yzjDD8TuyVSpiH/lOp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWunyTbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWunyTbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E37EFC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717963042;
	bh=q9DdW18KyN1pSMi9B7MJ1JMN20Vwtc3ZvPNtxsKXpyE=;
	h=To:Subject:From:Date:From;
	b=PWunyTbDbWH7s+StHzUvJJkyy0zNeWXMt7854k5yeiPewS8rdSJ3CEMNLE9iyANNU
	 QGS8ecX5YOr1OB0QeHKnPcWxKrIveQLWHQ7MN2amoVZoHF/Z/cPZ6qHGJsk0c1V5EM
	 Rj363/vouRLGMoPqfyixgH0m9yziSJhsTIv30QSDeExHUEEgW+qYuXm05aZDHxAMyY
	 4F8z5etSLd9jIht8CzQF7Elpj1tkpmx9XmiFtEbNpCzKzA5r9tsDpbJpsvV7yRsqSV
	 y9eZATYapoCr84dtmJpFnqQm+cK/8BM4mZEbymcHyOx1BVygNLiM+lNU5KYU1esh7h
	 L4RxE5kYZHjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DDAC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796304280.19028.18436081574984355733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae781011223d0cf37e24d76776ac89feab0f91bd7ad8d0536ed37079fcf67fa4
Date: Sun, 09 Jun 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717963042
