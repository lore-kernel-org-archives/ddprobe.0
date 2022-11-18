Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD84120FD
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B265C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668775254;
	bh=2vgOMOq5ALrVHGudIf4CPWmx6IaoBNS4JoUO4eTGvCE=;
	h=To:Subject:From:Date:From;
	b=NtVcAKYXKsZf7tqoyG8fJwohsqA/r7mmsmYVcbGhnI4u43Y4Tz55cCsVmUZMqa1zc
	 b5ib/9cTNTVwKxf0a8skpmmOYvziauGg0zZExLTb5+g9QN3hlaIqVivQ5sd3sHimhP
	 ZbZR1L0FgZ9Mq8zS3AC6GWjwwfW6pO1x4F2XtY0N0BIX8IgvfWXHYUQF6dxL1Em6Mf
	 L9zlu6CXOU7pr+zZvl3jzhTdErOJrModd5R0H5CFBT7IIiiaKb3FQUpnAMsPEVvAiO
	 6oSHTaJ36OAK3S7/FzZlPWd/CILeAT8bJmaafmVgSKyNrkGQIg7SklGv+68xT9rktz
	 767//9EZzhG4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F3BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166877525433.17392.4441863560918917158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941cc9160e539d6f85b3db1bd08868c475ea92d030ca9ba5348bb21e1c57e0cc
Date: Fri, 18 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668775254
