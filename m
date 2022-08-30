Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2675612E
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 694A1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661902253;
	bh=/+1X49Eg603Owqqd1zGSl+RvUqO6eRqQAo8vHDp/lWE=;
	h=To:Subject:From:Date:From;
	b=CVIShrfob7nkL4RGXnKlY7QF9RgzgKcTKZFWtrwWB5a5gKHbFVTdyERmu7sO5usGK
	 P4oMaGWbvl3i+xi/Sn8/AkYBn85iORKr9nV3ZWJLTTghz2BIcww/bWW829DV6I1PjM
	 czEDKnw2P5ZfqFi0kSqbbAVh391VANnD1NmrKCg1zhcyZA/XYDbo+bsm1tB28wlKuS
	 JW74Ly3dOqa8Y8pEgzlVP3vN8sGpMxu5if+r4jxrcaWYX8QNjvKcwcT40w8i9cVFRf
	 OA51W41KQiseu3MzMLrJgn6tItjKRa7+UQ6jlRLEW5S3/wabeFHZCADzuxO358S/fD
	 Ew2uSQ+EpuHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3C3ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190225331.11231.3072602552239953997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240dcef88d186958510a8b90ddc6eb139d78453d648c6b53559c4e95b5fcd18d
Date: Tue, 30 Aug 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661902253
