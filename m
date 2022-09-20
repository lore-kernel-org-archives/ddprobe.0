Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42D02570
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 715CCC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663715453;
	bh=mYpIEaVBqi2oFnlzmUVAhT8q+Zo0yY3nSVwj8kwiDTU=;
	h=To:Subject:From:Date:From;
	b=rFnQOQg/JHGCjC5aIU7m9BAQNAXV6FctxKh/ybb4bcyDUg6kzRvb6aQrx+cszkkE8
	 8wmp1ZXnoPrqQy/zCm+zAXSYrvseBCxmanXbYc7mMxo9QsYjfvYTAP8EuM5wM3x937
	 zu2UQ1jmRunhH9krK0tZkKbwdb1QoMOJWSblOiGd3fIKkd1ZUScsLh5Sy3YsY5WAe+
	 OJ8NvmZxpq/akEvcyuVPrP4CIJ3BXvo0nbE4OtKus67CqAHWcs6MMT43YVpDtMXL1R
	 iiv42jIWKL8hRKxDXQHOEZycTJbNgbSJX6k+gVlrPlkTRhmqCe1fhIjwxe9yThS9/R
	 TrEy7l6//kYjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59142C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 23:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166371545335.26316.5981301170738649825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff930c1822ab2308615c375fa1a74bc50f90931f58d756fee11c427f53fd0ef
Date: Tue, 20 Sep 2022 23:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663715453
