Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EFD10E7
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1581C4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677084246;
	bh=LRqVVDHjJVCQPqCJHXc2URMEMraH4sKrfimFFEQI1Tk=;
	h=To:Subject:From:Date:From;
	b=d7GhzLWXCcf7RR4zKX14ZLxp283U4Tcc3rFbK+W4t9RJTKm1NSNetQ0hSVo3QDTWL
	 YXviKM/lXdLYLyiQYc8za/X7Hot2auXhT+uf8WvxrPmiUqx7gA+LfPRhnVy3eiK9ng
	 9x3vDYZiaYCyNXe/H9RMgQvkBz2Uyr6CSjS6hjBYu8aWd47vnggrdGeUrZfIkYkfTG
	 3rj3rpYzOotp77YpEK58YCNyBAdcaeB4xeD4Rg6ajqofKxXQu2Y0XBb/vTsq18MnKJ
	 TmoVyEm1j4K5zONynv5iVqqCVfQ9dLzQV1e3V7T+SCMj+5bHCNVsZNs2VKEIRGrgqC
	 ZeJLWYrnw8FnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDFC0C636D6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 16:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167708424583.4820.13313788712563746470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976acffecbfcf441f1ea4fe4bdab90e46cea2ae4fe110b276e7b32992256c579
Date: Wed, 22 Feb 2023 16:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677084245
