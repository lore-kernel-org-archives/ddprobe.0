Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86CF93233
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 14:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EB54C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 14:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688569029;
	bh=jEiWkmDN0tpJ/+/sO02h3eh9RX2tnPk37F0rni/x6EU=;
	h=To:Subject:From:Date:From;
	b=AiUNl5IxyDgi76vPhw24jMHaWqvtPAOrjdOgTZF9wSkVZJ3o8KlXl2KMDUpbeuKdZ
	 6MLxPu/Ui/rxi0Y6UpRAjcjolZNgltZ998PBo3gfzZzH3xTZ1UuEuFP0ok0W1yZF3e
	 wmUZuiMD3LGBA+3EgDsOETjU1T/1P+t4Ne4dOerBVF1xo1SG+C1X8RfRZxQGy5Dhop
	 LzUAUf+O2org7EHzb20zGwa721UhCKmoaI4rQIAXiplEgAUF+9CIgKrMPtfnxFLgzM
	 ksLglWl/4mB764xqaszScWniJ5Z28IjENC4ZlgNkj3MqA7a1XCxlVK+hF01tDW1DoR
	 CXt8jKe3UeOkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2100EB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 14:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168856902891.10142.11732030668531572386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e2b8e2d65c25d23e594de92b15130ecf3cea6c06d19f613941affddd0bfc20
Date: Wed, 05 Jul 2023 14:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688569028
