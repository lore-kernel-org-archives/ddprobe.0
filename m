Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC6F625
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A0DC433C1
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668072654;
	bh=rmNT78Cr4osT+LH+UDtjpkwbsEoxyXsgLBoZ9EqFIWk=;
	h=To:Subject:From:Date:From;
	b=YpXbKRKfwupKUXF9LC83pqVBbD1FB4qSBBQfY9FWpSDpIwxIwsJayfW3MaZJR5/9M
	 Duzz7ZE4vGv9cuVVCRH74nRO/2OPBUVWP73d6wkcPwxVuS8b6f7+oU1bL3IWPsmots
	 YRZ2l2Q9OdmGOdpliFonwCEyTPpxQhMySGGwlok8ODLtxp122xTZFgpSNfFQQ91XbM
	 7d+lEjQoEG6x2uRUsQdawCvkijfTH6jQXMoojsgWBXTl1HVw4SX8gm8SyKYnJF1+Yd
	 OhU3rNsnrIIoBStpGDqH5+BIQq+yoJsLy9+GGuxHpAEYsf+iQdCAsiGDDcbYAF8x2H
	 CHW+5vLJfZxGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574C6C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807265434.6219.2450349687975641291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6229f40234a5a26e962b060e3c7b9edf7917b250cee790e68f50b91faddcc40
Date: Thu, 10 Nov 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668072654
