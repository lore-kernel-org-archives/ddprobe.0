Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D2123A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645798884;
	h=To:Subject:From:Message-Id:Date;
	bh=/2+x43wNVVT/LnxG0TskflT9aQlPBKHa8e9Xta32HDY=;
	b=hlexrCjJBUF8R/HfCmaotgeHYWrJ5mZvCzBvoXIejlrU7DN22xFhlkh450Oj0VW3
	CisYeCk1IxIIOlPmcEp6unlCzQKuyYPOLcdZyyOgDwwGvAjO4hfdLk9J5DX34qRtwaU
	lSUmoYPYhMpRFOKOH4xhfd3OoFcSSdxI2TdNL/w0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645798884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2+x43wNVVT/LnxG0TskflT9aQlPBKHa8e9Xta32HDY=;
	b=iDDFS8Ig09loBPcsE3TUK5jXO8VWHqx4GATOWhLmEfcYljzrzTbgnVrVlHAL1sVa
	j+qDOSlWYAaUwPYlc/IO40OXVFwwgV3rW+Sp/wX6Qakc9jGiHX33+mCU2yGueoI5o3w
	aMnQmBXfYo051e7485rAc945muP2xQMHveIN4Mb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3142056a-3421c5d3-83fc-4b6a-ad43-329482062b1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6d49d01a7680a768008b994bcdad8921d98aeb46e604cd7849b18def8c05b2d
Date: Fri, 25 Feb 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645798884
