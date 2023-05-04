Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB7C156C1
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 23:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD23FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 23:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683243905;
	bh=u5NmUSshkU6dP/K85nQgE8C9roAQRrla/e2pmfBbauU=;
	h=To:Subject:From:Date:From;
	b=C5ih5n7fyS0CR/7o8gV2kBj3XB59eC//3NiyXPsO/Re73iy+R7fqkUTuhgKIhDp0J
	 GK0k+inN9d2qAXboY5Bo4Sbnh/ci/xcGa9gAmP21F/ztjw2zdkitEDIgX6gZbJqLIb
	 iYQy5TKC903v0vWl2rkyE/IKgW0JR4iV1zhMkmclQQsbj2wfmWR8HF13bn+oNozfO7
	 9j9tVri+3oQ8tIkx1AL+K1aaB8KFyIJvtbwRIcuI2EI0FHqMlwVwqmHvH0Ui5jEWn+
	 rgeUbyVHxvJaIrD+pNy5S0meSWLk9Z1w/66b474P4y1kupK/7SiquGiwF2a2Wj6z8M
	 0GYmcNSzTAecw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EA9C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 23:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168324390573.31715.16986905807528062043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083839c017b9d72469ab4ebf5d68af459bdf2f9243b1bf862aaa8233e1d82d53
Date: Thu, 04 May 2023 23:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683243905
