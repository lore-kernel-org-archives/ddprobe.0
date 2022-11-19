Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4F9381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A7EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668861654;
	bh=7x2dYgLzvs/tnhLUCgeDUrW0mwrlCdqDc90Meg4lGDA=;
	h=To:Subject:From:Date:From;
	b=WzB7RGXmKhGGZOwNjxQU58uFOgpa90jz+ZcRcGhUgGS+mJv3hhto1NMpDznTv0s39
	 +60448uqnPvUIcOsSLQ0yc0BOq+LakYll76pRKQIcRzSgmlRvgIvUQqzmK+fnvdzdk
	 aUe+6pjvudIdoTrfNdY17Pm0kVcNFvDOt/2O0qoDmn6BTcW6Vg6LROBSYP6VTVDxBF
	 4JO2K9VW4/lnFvlZ0csW7ljd+xcpxRoyuNCfv5f64clQQKG+iQ35Vh8+5kcBjBlHn9
	 O9Yl0LvBhWXk2p4z5ZVyxDsxIwaslJYQS7a7iFZ1QoNebFBJbmUmepFb25elFLsWkz
	 rRDH8scBd/YoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A13DC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886165436.17937.1933386556087549169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d5388bcd6b207c0aaa23b938dfdeb6802d4e30c068c711bc9546b7e02e4320
Date: Sat, 19 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668861654
