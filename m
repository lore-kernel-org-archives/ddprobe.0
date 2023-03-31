Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9B915B8
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 02:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF1BC433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 02:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680231065;
	bh=b4++hrELagSIutw5K8v2h197zqCl14nFrN+3+JEpxLM=;
	h=To:Subject:From:Date:From;
	b=cVMOuA7L6itY74pCHvTHvZhFF2ezWuLNUF9e0Z9FHXEBCUjJ4hFaM2J6jE+RQFAi1
	 UWYRMy1uJcYfrT1y1mxq09NwpjcaJS8YuVKqECZEUhdpNLjHH6JLd+r0ilSCfcXtpx
	 b7DFEjYZ76ILAvhNu74bBjtZUETiVm2aglPJ8F4H79eGOf3HvT9z/Qv4QAFQtL2K9p
	 mGxbz9SFiGwn/2jSuUdC41GXqGEU3seHwh8APAWDYi8jDge3p1DSyW4iIhoy+96kFp
	 L4yp3KVOzay0DfH34fxecCLQNWDFeGmQk1YK/UwdZKEN1/Wg/EHDgDT6P+7thKp6wY
	 W/oNbXx5Mqllg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C048EC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 02:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168023106576.14641.13749695260439100493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b6d7642926212fff80e76e223b1670be4ad908ace5836198b15ded30736c5e
Date: Fri, 31 Mar 2023 02:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680231065
