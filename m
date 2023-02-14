Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5C02F24
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 20:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED2E9C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 20:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676406426;
	bh=hdy0V/lutt3zYBYpjisWDmRsTpRMUSLbFYAgP8rlDPA=;
	h=To:Subject:From:Date:From;
	b=qnPGeL5SQnwHwQZ0hKllEccawLYpyFfsbL16F7Ebx6Y03TEuBxsF2nK4D42WHf/ZE
	 A48sbL63DDDjxpR2BvAJRa8taTUZcfgCh8X8Hy+8dPBu8xc7BWshPSSCl+cOLKphZ9
	 VEvR6W4HejFVjAPVKb4uMMFwwoQU/dpqtk3OEfsb0Wuu3iBhgluliSHETuRsxSkcUU
	 nqXXxsX+/4ZWmGMWZrFsKUuGXrKHtqnFsZsnJGT9KA5e1sRgeHtuU06/21v48/u07i
	 sPBfoR1qBDzMgYEZxMUWCnzc9OHfdnZE8PSxLXF6xvIXQl+MmkDYHwh2shxTHHDdha
	 +v2L4eUg/qrtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79DAC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 20:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167640642580.27131.7361084182087694901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f1eedb5f109efb2395547c27f973884561a2b54fb80043cfe41ed85cf77e5aa
Date: Tue, 14 Feb 2023 20:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676406425
