Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6A7E1367
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D532C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672059087;
	bh=fCnym5V+MnnQvNSFwSCR8ZcaXiRykNB+mI1040MQMwM=;
	h=To:Subject:From:Date:From;
	b=FgsMn1tep7InFAdvibu1q8bp67bxJtp1QcwNvIBD8saMkN9YX9yigzKkLnH8avaNm
	 4anul24wnvN+oS2AdtjcA0tEeH4crpYZl8/eINGrSqNsc/ySai8nxf2Q3TtEFjQQFX
	 agusUEWnb1NZHiG3RIsN1RMoqvvB/ujkuGIR1vtFu6+V2rhv1AnIOzOuaxJRWRGQnC
	 PSdfe11dbN4OkhRm6MeRzWd+JaqGAS0MjEN4Bpob3FrWtaIjCZetpyo3odxdlhw17R
	 VMnArsBdgS3Rt0uqiIPkuKXIQJ63U1iEQLooBlPQ4x8R7RdcltVyS2/p2Tyf9Az4pQ
	 IKf9Sz8L/1gFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65833C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205908740.16435.8864650691014481877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81856dea1235d77a6108d3dabee2e211399950dfb188c1f10e3bb528d26178a2
Date: Mon, 26 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672059087
