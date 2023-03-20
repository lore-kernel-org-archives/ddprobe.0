Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5451D7C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 17:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F31D1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 17:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679332626;
	bh=PhBVn9nnrzKXKdBhB++EhdqTS7p7FPZxtUQXddGqhPo=;
	h=To:Subject:From:Date:From;
	b=CvTbk4QX60QdwUWkTTFJF9ro9O13iaVfF07k8M8/kFT8lzlO8Jx2ySylFGOhAZFD4
	 iRylzAkW4DdOK5qQWtMIfi5iCTR6rHkZhUVTXWL9LxvF+eVLijZrtIRGRwNxVod0hA
	 /ilXvbbQx91L0Xl6wDgDlJ+5OIcGQLJUFDdKOW5O9Xig/72+3hs4/dxX4kl+37fBB9
	 L678FlphQwenktwWNvezQtr0zFQQ8CVqdtoHTIZxnF4MObb5omUmJexLIUKKAikPqc
	 y7/7q7uCVgmtYG7gUeglZHX0cbQQAAPlkiy4O0IoqG2Pxbu9IFIyVI7xOjzNYQd5ui
	 y4zz1Pwb9aULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39A8C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 17:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933262585.13452.8371195489182141144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09d2e4503bd129077b29c8e7c14f8cd20bc8d31da6defdcece7c5b0257e3f37
Date: Mon, 20 Mar 2023 17:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679332625
