Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18001646
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omr9f5jV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9834DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698292696;
	bh=LqCeud6FPNgMRtqeQR4c5EVNgH7RTx5ozR7zG1snrdM=;
	h=To:Subject:From:Date:From;
	b=omr9f5jVDZbhKBQlwoALVsTaJS8ivn+1rIDaZkcHzUtjsEA0IzE9jqTb4/X0qGA+3
	 ic6xxQhRbXS+oOl4CRglE0TaVCo7O0TZySq2K05bbBMcgxzCE0GFWuyjLwaTIWbhn8
	 NxP4wc3Jjp8uIi4N75HYnqU0O7Gj5DlZ49DmgHyuTUxZigWwxZM5ov8m9YiOTL1Eqy
	 vCtFGr1zKFjAiKnw2SPjruO2KVpn+W0hi0kGG4giuYZKdTwwCxtNUxQFjO1ANf2A7k
	 xfI5uWDb/s3lpxLcrHS94H7dD43YWU6/SJIjgd0VBIHksiWeKj1ZGutMFlDihNbcOM
	 ThvR+d5H651LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76793C25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169829269643.13804.11923791286185804592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7370d09262f61f32206ab7080f7aa53bde0030f441f601693a43a953c4dd4f
Date: Thu, 26 Oct 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698292696
