Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B33D988
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaZwegWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E6C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699918696;
	bh=O7wd5dM7RtkytoHItDSJDM9dXvdvUUcrKqkXiX23nS4=;
	h=To:Subject:From:Date:From;
	b=HaZwegWhZeDoLVR7D1iN3HofpOe21EPdNwg1hmNTCO8AWg2aqjf+h8UiOJndBdDdC
	 J3AIJs6ApgmWYNKv2kboITzsuwUd8YooZk9JnSLinoWYPSfwXW+ucybVgyQX3eoX2Y
	 a7+NYx7s0maUdPsWMi5P/VyLIDDA2lXqHDX8XV1xMD+WtU0pmiOzE5/G3lr+l4M4xv
	 4MTlAA9R7ZfmG78khpyab2jTqU0KKeUCaPePoG07yedWiy5ahcxkLbjVTGOUTcqeip
	 d5CX4X0FTkVECCfnZuMKM9ibBJs7bffWK9Ntfwboq1j2WqPvTM/YpXUuDOVAtfzH7I
	 vC7G7qtX4XoDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76EDBC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991869647.4702.10917893089402032415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d2c27ceff30c56be6173f48a06de1791c5ff311a031d9cdc0e32d87058a38d
Date: Mon, 13 Nov 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699918696
