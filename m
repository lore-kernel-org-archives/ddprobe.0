Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC2A28F8
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C327C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673338287;
	bh=xto7BL/lHaWps+H5da4p1khcdnHigDtUPhWzaW3ykEU=;
	h=To:Subject:From:Date:From;
	b=OB79XIvtYkglTRprcdnbwq2F2c5FKff/nD7M8PQcbu7YWp4dLXBqWPBOlvxCJHw6F
	 YyPQMxuU/GeWCdBHbltV/H0zGMUDowvzZYPbCJhbsA3LCsWQaX/Pr3TlAQLJRkqVua
	 Xqj1cIhSe1ywZ5Z7adubs9MrNXD7NGiN/XmJby1EEj+Zm6WcOLbD8XsKWpLjXn4Xx9
	 0rbu+AdB+u49aN9Ww980GydXTSpQO+kXNT1W+F4IOSVVXVa6qu8m4SVFIHu21atJhd
	 7nI62rVsyZYiL5gjPITOMGtUTbjSAZdFwzt44vZ0m6W9OnTzPfVaP8q06aKYv7Xuh0
	 l4T3Bxz51I2uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DA9C61DB3
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167333828740.8535.8773281555008203869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8120f1214bfa986654baa759d8393fd215a4e51463f644c7f2bed19b9366e4d5
Date: Tue, 10 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673338287
