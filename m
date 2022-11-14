Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F2F8498
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68519C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668469254;
	bh=3GcD+G6feYbiew0J/gwcX0KIQkwE60/22QPrqMY8iaM=;
	h=To:Subject:From:Date:From;
	b=Tho0b5S9tQHiTqYBEBFEvNU6/uGuU+lZZbnrQ4w7F93KJHffhINXEXVSofqf3us1u
	 Y2i9kcV9k1hrTA740FJs+LcCk9p6fyy+pLPZ0pn4Wb+8PvvX0p6hEgqk47ZPm2lTIO
	 5HB+P90l5MCdJC7M/kXmPR/y8efkrw66kOcxGrLe+FxwdwAqjyKCmX/n6pYCofGAcc
	 ADbILjLceVsXE44GFyhQttP/TqYxgM75tTpBTHiMfRDmsn5GkPZWEzn/CTGHHv2uid
	 B8KotKHNsJY0qKRtKHY+RrbsBFVMxPa6/LYIu2BcMKfgrZnwR1GxaaxD3QD/f+zQNt
	 b/bWGO8TFh1gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E271C43217
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846925431.30004.5300309848077998674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f47c4d02b497aab2395730be5e57e841701ed3a1eb1ea8ed5ebaa3b3ec2afb
Date: Mon, 14 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668469254
