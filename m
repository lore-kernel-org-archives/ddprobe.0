Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C434C75
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79D15C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671549687;
	bh=mVtL+OpaUNAxjkS2WfuPz4MI02yzzhmnK8vAFYAyw0w=;
	h=To:Subject:From:Date:From;
	b=j3ZAg20oJFs6PvYOkjw7eBQLxclPnUb0MHvKfVvhyud8ejACsu6H5Mlu2EB1oveij
	 N9dvW2ifi/fTOmwxs/DZEyhDdPH/czYY7JUAPfcQA3XViO62WjiJeh270E8ZXjWeEA
	 fFf31WTtaD9aS+mSDZfSToR+RhM/j0oCqDXKshS7FPavAWnwUOOvJesZR7W0SLti7y
	 XWrrb6UghLILSkkFaF5jLr2aFUWEnkEOsL7+iTKEsabbdWS+cuRYwsEoLJMa9c1U0w
	 5i42qBphxUGvD8WRMzeZOEUdqGINMS72qdAK9tTqo2o6UjkT6eN9aVJVGmMIjQYk26
	 okhK6SChwXIwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB26C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167154968738.9784.14043269750807012626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b289fc7087c5fd70f465a2a95965db558a58dd65474982a91cfec9eaf56373
Date: Tue, 20 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671549687
