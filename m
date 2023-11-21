Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2EA199DA
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHjnwHVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CB79C433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700545696;
	bh=tJAqTu5Kn76Cg8U/gk5w3w0WUQ9vsxlPlwSn7zJjoV8=;
	h=To:Subject:From:Date:From;
	b=ZHjnwHVmJ/dA+o3fzbACj5BCXIwl7NRkghpJVtPO4ze/yWQxr3frRQq+QjulmDEzf
	 DzeY+scdMryC77iF9AKK8CriDYMc56XSOrBfO9WYjFcCpuYoz1MRJe42Iz4yp1CnRg
	 jSS7bLkxf86C3IICyXCYRNbHDTEibqGB/e3AVltCxY3NDQNs/iLVCZ23p6PFhoLF7E
	 8W5rAnexoCRUahpW1mjv5CQjw/A+fJgVumrL22TjHWwefmqcqhi8kZkZLkEWdgH3AX
	 scM/e2bKhsnQDyPYwcCp7yb8DoCkTiClqVXxnE4KyPddhN3ygx/ykmTA7kWG6nVbrB
	 h+QIh5ia5gQLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D359C5ACB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170054569637.1368.4382349969406878205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef2c5f926b28605bf5f285c542b171eac8fe0f1366ecad2a6aa45978556ff94
Date: Tue, 21 Nov 2023 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700545696
