Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF93A4A1F
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA10C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663585853;
	bh=Zz+oMkCECzB5yFIU6/ktuvwMAR0jyVVh4tVFNtX2Mas=;
	h=To:Subject:From:Date:From;
	b=YWs6UTFK+NsGulMJfYMf4LaY0Svvd/y7mUjhizBBlY51aKea7jjgNV4ugK9O0NIPM
	 CX2PFhUhqnR6tD2uQmbx8dMKTBGlGRbcZQq4zVHvug64lUG7qs4OQt4TC6Y1HVn+XK
	 SnavKJ3DVKuYb5dKYGjPqgUCAiGPB/Jr9fH/dcYr3VE+dIswggmeRFFwlsi7vVdqxu
	 imjYgYjkmNbRb5p0bYc67CYqo7ms0DvrWfz1Y7vGIhpoBSweBMBm9ycZtxXy2U278a
	 j3WT+CltnEddbxxBP2Sn0BpEGpO41u3OxvpqsiMQwvnRqhVlB2VLTRkBC37kQ3TfIT
	 OhKdEbqPx2nSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506ADECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166358585332.20247.6781075843742649952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3704bff5243fecee7e8302725cc8ba7b53633e79b35b0375e89de43e3b2db99d
Date: Mon, 19 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663585853
