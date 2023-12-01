Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19120125B2
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXxeDl4G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85844C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701418096;
	bh=V7n6u/vxN+dyCq5UL7XoZVHhsHQMUSSf4S6EKmQ/WH0=;
	h=To:Subject:From:Date:From;
	b=SXxeDl4GhNIA/brSV4YR72Zm1Bd8uoPb4i2/P6jY8n0ihZiq9BVVnlV/Bc5MtSkY3
	 BfIt5t4gpDz5acYC9aqnnNw1oXVc1dnQ8s+hQPYFFEX2qDJL47wYD56mxdoUlSoGzB
	 HHwuQ6rVrGeldQmNvtPlDvq31nGho4ljUTOEzLtzGY2wqDyWCJLSjj4FoTySF+Zrv1
	 n92ko/aGzVn5kCaZnKgWKyFrs8ypcvhJbJAoWKov5adE9lRVe32fpmhLownMLdIS/Y
	 8KidxGqixuhXqGHbjBY6W8zMAgax5asHdzGpfiJTibtvYSofmJS5h276qHLvn8DWb1
	 xpd5RTKqT9Mmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B763C4167B
	for <ddprobe@lists.linux.dev>; Fri,  1 Dec 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170141809641.7253.5047204998757605615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb00e83d367a2eded18d92bc7be25243c61778b5dd09b1f71cfc76f3da0714c
Date: Fri, 01 Dec 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701418096
