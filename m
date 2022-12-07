Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B25376
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C01CC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670376654;
	bh=4mDUJ6Vr7OBy9xEeTUEmFwo5zw+cqTcGB/whmqzupYQ=;
	h=To:Subject:From:Date:From;
	b=qP4KxNmK6Xcdp1tUvG0C1BB3slT83sQSmBxzETIR2dkUWxeqQ6eyzenuOmlRC5mkb
	 2flHaLZqxhvO9SZMtR9beNyGHlu11dxfwES0twApKJehEtG2Ui4/cUOBVSw+rtfXpn
	 R0xnpqo90m+EbCz/WSe/FhVk/WYq0ddwmhgjlZ1Igdubf6R0bX68M+mwEfNgfWKv/0
	 AHoSqc1YIxITosb9adlV0casO07VCSfvujKHqtXk4IXt3q7Br3BLNj0wL/ccs5vEH5
	 Ud/rJb91YgOgtFcfdV4LtHVOiCiLT+LIx0q6nvnrOXngflW7CmjhtH+l+SLRIxVA3B
	 BGNeFYhBLa1/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5268BC3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167037665433.3237.6626120365652720286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03e3af0d797cd08cee8cb0ebe07c9fcd4df8449c182be35c8daa24f5602d69c
Date: Wed, 07 Dec 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670376654
