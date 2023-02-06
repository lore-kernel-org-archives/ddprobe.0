Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCC23C2C
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 11:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB1BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 11:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675684565;
	bh=zuBXZqnxohUrG+cwmKo3b9qfKpekDTEnCDlLoF4T7bM=;
	h=To:Subject:From:Date:From;
	b=qKQTyfnA3XdnKEGxoQ2zoBqJd5hSLwx4L6ffEvCWDyasCcLBfIiPsLwsmW8I6IGj3
	 Q+m9Xwtinzsi9LQIyfwv5bBs8Iq8axpGmmtLO0oygU287huvSkA8qpJPrj1ThcLXO4
	 MnUSfdavz7jDcQPr8BZcueSVnrM9b6N49DyPF/6Yze8uIgm/CuVIp/6z6ZebY7Oa1L
	 wtJH6x2PH5cfLhEzbOB8Q6zTCSIQN4xrIvcbfpZbNbCtfMTQYa0WQ4dTwJPCIarKN8
	 uX5Huuk7RHw/EaRDTQKp6z1rCk4yTGrwvsdVAj3rr5XWn2m9ip7hS0ejVlRRK1cugx
	 5VnKcldEDtFoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEAEC61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 11:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167568456576.28978.14593296220895193132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dea5c878ed7a310447a0b145536044e86ffc00f84d0d85a590a79159de5de31
Date: Mon, 06 Feb 2023 11:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675684565
