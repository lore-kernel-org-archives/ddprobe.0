Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443AA4A29
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745460594; cv=none; b=dlVDDT/aXsz5y/wBij2pM7xDfnEcusG8hECcPRuXQGZHx5Wu/nhQOiSlfNDJEtkHhoO//SIkllZnnH1JtioDp/m2rYQnUgrC9E9xEuQlPw0jlME7WFEFTN0VYQ+h4Wbx3CiYk81SLxS2FWg8+Ctb+uwA+oPKFRlWaquqOhvn0Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745460594; c=relaxed/simple;
	bh=0qFJ7n8vFNu21BAFLm+2Fmr6BA7dSPNda5ayjK6qxEg=;
	h=To:Subject:From:Message-Id:Date; b=LnzD09kFj8vNywP7Z1H/29YFAxPye2YvniDrHEgr2FWhkYS/8aSNjNnA6J3ZsY+vi5gfw8FfkHXhTmq7dvzYLcImapf2Vk99WmJ/7657BY0+d9yk6cy187j+8SwTr5msc5gFLdggzs2UHZgInVK7n6QfTfLY2pPUK4+j0F6/7Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUeKZ4Aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUeKZ4Aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4970C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745460593;
	bh=0qFJ7n8vFNu21BAFLm+2Fmr6BA7dSPNda5ayjK6qxEg=;
	h=To:Subject:From:Date:From;
	b=uUeKZ4AjfFo9Hq5Qh03piqtD4UBh1+8vk5RM0WTuDwe2aQ+eCgnkVUQihGQugUWI9
	 mxsxfoqzLM77za6e/qTqM0X0qEk1uvBkypvJVuFeVN8WeZVPveXTDlAsdo4z3o0qK9
	 0RWVcGK4Y+n0BpzOqTZyXvmywzdqriT/2nZB2VeNt3vhE5A7yEVc88hphLcLNgKXRG
	 4lOfNFv3j8yHYzLwSpOUB89/F04Wj2mBrZxTInZfvHiQi+eT8SJptPmBzmpJzhllQQ
	 SgFN+1kfHz/R6x7FvPirCUj8uXJVBNnVKB6opyJYlTm1wnvnROfnSAGaTJEwM642JR
	 TSqmwVxnvdg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91495C369CB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546059357.19281.257737350165526131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec70383daf24b5d9962c637b89cf79bc4242123aae2649dce49f53b5e1620d0b
Date: Thu, 24 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745460593
