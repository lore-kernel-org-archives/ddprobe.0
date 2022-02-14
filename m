Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5287A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644853253;
	h=To:Subject:From:Message-Id:Date;
	bh=F7Dd+yPmK1TDwhtGXmBDbAyNjCHMqmVBtZICIor9djI=;
	b=OukN3cQkSClvFgN3ZTaoC55plcANprNdmJxgSvLbBEmz4CFTkJ+usHbGI9AFQfIP
	hBySg+JPkttSDesreSLm+ayhXjnccMaRzJ4h87EaFGInDIhdmRG6TIc2QzikCGq1RSE
	5aLTRS/D8Z0+g7zchAAN2FTQJEtJj3Vo4N+eowm8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644853253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F7Dd+yPmK1TDwhtGXmBDbAyNjCHMqmVBtZICIor9djI=;
	b=fMMHa/jsghpSrB1M/6QhTlD7IrrohyfyX6/MwG7c3tO30KuFoLeZMUfbWbx/pkx4
	+FQXRcrZzmmn7ju0Eayzn/+pYxotg5IBFGKl94P3wlr/RrZh6rTf6EqrBBL2a5xr/dk
	CB0e7yITLWd8LQ1XI67vY7sDYyHqY+VXE4r3Nvu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8e4d3f8-f2efa558-312c-4a4c-9233-e25b7e1c7f1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0646dacf7dd6f2740b7d9074a7ed398bb9e68844cf3a80bc4f3eeb71e51936c6
Date: Mon, 14 Feb 2022 15:40:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644853252
