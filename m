Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF57BA50
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CF3CC433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669760454;
	bh=HgkXMHno3fH5CQ4821XzhYMTOxdOvR57PSgn3AWxV4s=;
	h=To:Subject:From:Date:From;
	b=o0/+YTWXuDtjCgEwvzTbkHEmTcr5tIzLtshc1ZAX7cr7Y8K4A+VBTZf/bPwOkeCQC
	 3swfs6fb98AW9dHZ7S3OHnMp+SRaksnid4HVhWvjXc3m1j1IHa8RzDATjYFdJw9lQ5
	 iSHHjPEhawU24RR7U9eSwscZkkN2T/9h2bHANNppCQ7d3MRuFv3BaR6eE399cW15It
	 x02PwFueh75D0++WQGgORBL6qn0NUYAWI9bRb2fowKHyYkUknIxx9MmI25/PmdK1Jf
	 mNTshkUtiMdij3N2d6qf7ULB99Fwr8b+x//fKV9DU3rsAL37c4LLwb5YgYi+OWIgJc
	 qX967an4a+bLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F3BC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166976045433.14847.13813860848177276049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6849f893334d5354beea3aa1fa5e350f5ee85db04dadf7a61b8e782c3a044cde
Date: Tue, 29 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669760454
