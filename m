Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761732572
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 15:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648567858;
	h=To:Subject:From:Message-Id:Date;
	bh=NOFzER/VXBv7PrOTK8hsdBf2C+z67w/ydENvm1DrUDY=;
	b=SD+5l79jcHwWKkMBUpkWFjG6JB2iM2egsgw4VXcW2r+vfA1pZHr0PvGfYdTVkKAS
	1fd8RrIvnJwawm61IjQhGoBiNUSDG5Ai21Zmfpi/GBR+a9CkN0ry/JXLDN43zjD5l6c
	pstZwTFoGbiaajg4OFNo6MJHxl9BomLgsqCNGVyM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648567858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NOFzER/VXBv7PrOTK8hsdBf2C+z67w/ydENvm1DrUDY=;
	b=Gv8MkfAUVzte4qRjlymn2gH2X1uybx9HRfm5CcCmS9l9AGMCJJfbUCbbj9hbXTca
	Ex5fRjEXZMWZ7CyFnYy1qfMOnPJY9qeLlIBcUqzF1DecjM6PN3yW41woSW7Sp9kA9J3
	xeskbFDlS7jmT0Mjw2AHatz+weejZoLk/Qv87sFo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd64d3494-df94fe6b-be94-4329-8310-816b9f15bf96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 178feb636a1a5d37edd3b2beb38b7175343d12e61a793d2f87934a4d06133c7d
Date: Tue, 29 Mar 2022 15:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648567858
