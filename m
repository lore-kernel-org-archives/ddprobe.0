Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3CC371
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 899C7C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671244287;
	bh=kOpTs9ERQ7vKh5OnObvuko3F2uehx3eB6QiYLDT4eVE=;
	h=To:Subject:From:Date:From;
	b=ci4St9EjDVQwd85DV/JIj6uqVO2o7GV+I2poKkMcVszsqmV6MpFsE6MUsOnV5+Yg2
	 OLyOZCqsUW3XCJ2aZKwkhwtPKPtxg48d6IYXIYUVF46iewRkCU04VFaAwsIrwgbrl6
	 TujCkJKhLvatjRkC554ZXwZnyXUh2m4dYikSqSEjwIrUmC4bOqdkZ7hWc9SxW5xjOL
	 y6Qvo8vZlrzRc8HDK60b4p7OU4gxPGUX1igACVLUYCGGjI7NehwJu8T/yIAWSXakPd
	 I9M+UllsZk688MNSZXtIp78RoJONRRopfXw1Vrcpt8dpDU3+bppH+PklFqs8leCXL7
	 d/kOiOHW/UBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D0C3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124428743.23154.9882033677561157031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3f69de2c7eea64c97c8eb8248c15a9e1c9c3a1387bc2f3dc1786fdfec8c782
Date: Sat, 17 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671244287
