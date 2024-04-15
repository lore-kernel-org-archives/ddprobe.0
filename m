Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685FD154452
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713214763; cv=none; b=N5vRe9BRjoAVJSk1qsa3d/cd2sR54CcqSDO0W6s53NTzst8pKKYYwh+Zdra3yaJnRtXCEWJL5hmqjfMN6mKL84OUy7xFZQhsjU4IXDAdjRenMnO0a9RXsIpk1DX7ASG/bKHJYlhhOtoOuJh7op0gwMd7qSfWYuwJpzABl2sg2oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713214763; c=relaxed/simple;
	bh=2pO2DWsCeTc6NNe+NCFBJUpHpQS6jSzrO0SPFBcVwM8=;
	h=To:Subject:From:Message-Id:Date; b=hOQlizY6CJ9O//Gi85Y33Ue/0RDRG7mxo/tzIeWv/E6vB+mGHmxyC1Tv5niSWzHxEwWI8hgv0iwdG0oUYgyUJlqqUo3kNAdpvpaiYLwujI5iFp6lxTNwKzLIA9mbtR7/ZbJJw5z1J+l3eS4psuELQIDqiUHCoyCxkaesu9CyYUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oJ9jX5Yf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oJ9jX5Yf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD88C113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713214762;
	bh=2pO2DWsCeTc6NNe+NCFBJUpHpQS6jSzrO0SPFBcVwM8=;
	h=To:Subject:From:Date:From;
	b=oJ9jX5YfoTxQq0BmTjKSpEDx/776VsJdWGqtG/zKs9vsfFEZF+nT5W644Wt9L0cX7
	 tAf+epJ99BImxADILSv8R6GmYIoXodgwYmCZbbZm3gOtatIK8lPTsKLTQ7ZDy37RQ3
	 FZqXZ73T9iIsYNTJCwv//8M/JEaKeVyo1Bpto+pc3zzD3SYNaaOfYgJUP29gerut0s
	 kKVVZU1XWiw7bFoHVd0oh+RDZk803OtHaJMmhwKMQDet9P0AUBfMXzWpbfkSxedJ+U
	 xVaDRCYK0b5ss3TJPbYV2+3+0g4GF7qTQX6R91TR1thXAvFTvNxQlX71QirLzNB3bA
	 Ui32bVx9wH+EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EA3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 20:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171321476280.24550.4997244101234147355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1005481f1f2143d1031668a7832000089e2070a171e0429b750e2e185445735d
Date: Mon, 15 Apr 2024 20:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713214762
