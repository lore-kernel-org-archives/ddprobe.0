Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D343917E8
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D84AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668742254;
	bh=ZmOCvxh47tfsStDNjFuOOfHV+lHnBlFC3PmvygiqodQ=;
	h=To:Subject:From:Date:From;
	b=YzlC/B/6tWyVzoLc7M2Xc+ZUU/cB/4blth2AT/a0SOc4HAnUeFAlzMsg9U0iCMi9N
	 iVdb0IEA/zFfk8yBYgY7NRTj1fdNXQDrhDr8ahYIJfMmFw/R9iAQhQgE4F6KwQgvPS
	 G0ARwQx+FF7oejpKe/56tKPgssW4XaGXwULTOahFQwtgxOFNeJonB9SNG5MNP90k2t
	 00s3fiswvYxBE47zLmTy1nXoyDyS3JXhyYsiTTDj2ONwl9L7++OmaZq3lBrReFvYKD
	 1o0j6xhAACY9c9LbxA2htSABuFKwl7mscEDDlOJz6WsFN15SE7FUV9V4tEQoyh6PyH
	 xjoPMAcVmj+KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52537C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 03:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166874225432.12302.16188412017079998359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39cbd1e46ed52cd1ce871ff5066c5301820ba727e92707b025d9222e72052697
Date: Fri, 18 Nov 2022 03:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668742254
