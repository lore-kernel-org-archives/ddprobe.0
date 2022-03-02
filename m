Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD6E2576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 08:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646208985;
	h=To:Subject:From:Message-Id:Date;
	bh=ybx0UdmK8lErYpZh6X5+QiENQStr1KTzLecuomHVLDE=;
	b=HAr+97C6hM0Uqu3VWxCJ1Da4Wlxs2L1DBpaLy/m59p3H+fRb+zRecwGpAx7qNVmG
	DMqtZN/j8erS9h/TmqcKq2Vddcg5sjROLOVIK2eO4pf9Raq6hiDBHt7Pgk6UxM1lkbZ
	TgPZFuYNLysuOSy4d2BXSSaHcsztnptK6kGrwcg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646208985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ybx0UdmK8lErYpZh6X5+QiENQStr1KTzLecuomHVLDE=;
	b=BU3ZupOpPSEftMA0OM3BVLumy3k8gL1gfQTmqkK9XP8iX05JHdMEZN2k6FpwWUR4
	l9SAm2ubpyKDDHBOLH4JPZUpqQwWjgMFpUlCDwRrfGU2NnsCLCWFFzIK6j0C2qNJ2hO
	IFQDJncM5wTuvdp/a7YW6lKS3yxBrJT/X006Xfx0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49b3a6dd-fe9be0a5-6be7-488f-83e6-7362a23c00f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4027e4be98a12c216bffdc7f3ac76aee4a5df35fab4805d0db422826bb28dcb8
Date: Wed, 2 Mar 2022 08:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646208984
