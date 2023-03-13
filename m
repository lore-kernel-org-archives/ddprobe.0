Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C32569
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 13:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D036FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678713425;
	bh=45jyqZ0+2QOJHk0eufWVdYj3AgrNQRkY3/N4ozDj0ik=;
	h=To:Subject:From:Date:From;
	b=ANRtNV7pc1qq5lZ8ribLmD5NbUpe8AVBM/4hdsy6iUDTnvms1pynENneLuVq2FqfC
	 /39mWujN/tP6AmysuIByGlAmBsbt455JGky3/1IuuO6AnBavgjbvjEvz+4BRBE+Fk6
	 156cCD87qAbJj0Ycx9Xg81OjBAv1b0npUd7O/o8cfDL/Z67dyEuQt0ETjRmhItl8yX
	 1bDby2A20rTvtHc0Y2kOKIaUUUQrlIOGw8jzbXtjz+M8B8WAcLVDrzwBfjXuW/qKds
	 DqCYxUFYE5OWDOp0QrZHkddcS7uzIHVvDdizVtg5Xrm2fqc7qKkhG8z1UkwlXjfZtx
	 bHpjbpVDCsagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F88C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 13:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167871342573.32612.171504696210287617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 099918245b86241c8a83307c5dce5ed32ced1428fa0a6f9ee8149c0320280edd
Date: Mon, 13 Mar 2023 13:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678713425
