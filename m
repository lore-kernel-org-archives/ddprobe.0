Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CAE1FB2
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66B48C433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670043654;
	bh=aWxedUM48QJZXzETacXKQmIFrJML5AEzgLjbK3YMUkM=;
	h=To:Subject:From:Date:From;
	b=de6NlE1tDSj0T2Xn1qfHzEUaL7MSgWyZozCa2FgMtPd6QxN4SL79xWPc0Yzq8QZhl
	 hdi2vNeSpnEqxQ2cQH5gA9+GN1+YKr+Bhnm6Zw8lzZ0Ui9sZXsXs/etDsbwOSh0B4O
	 khb2nthHiywrae5ujShwIiQ/jRSqjnAc2A7n4sjByMUo1+414wRXEmZ0tKgBbkjLpI
	 eSNGZwLiXuXukiQxdKWI7bFIDfPXpnmZYXoZ34MSO39W94RGBW75Hg6FHrTwTEMRec
	 ekawKgZqU4rkU0kXTvmdkO9Qxwrx5oqy+z+3Ol7hNuOV8A16U5S3bFpYe0BzC6rbEc
	 0brf8U2XB5/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5082EC352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 05:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167004365432.12641.1380482855339357197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d15a8af96f5c1d73902d99434760761183a4b14556c079c9e1af21136f4201
Date: Sat, 03 Dec 2022 05:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670043654
