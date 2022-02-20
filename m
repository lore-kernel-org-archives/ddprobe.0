Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF60180
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645326385;
	h=To:Subject:From:Message-Id:Date;
	bh=7HfFcmR9VpZBPCAz+HfzuwmHYgoFctth3Brh7V9wUaw=;
	b=edAisfd1ScjV1NeCER18BpXrXXbd5p9vR9cYKheLucYKbKlc1cY+WcHnl9J26ydx
	cKXNcinfPmQPa7miEfgmPEYYAF4XOyhiQw3d9L6BVRhCAX72DtJ56aRtJIkJLYA4S26
	RTZLlmgsOpAOl+ImXy6QGgsPpoQlmm5880m+V2zo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645326385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7HfFcmR9VpZBPCAz+HfzuwmHYgoFctth3Brh7V9wUaw=;
	b=ZLJKt1fRjoKWNz4rUTX3peb/dyrhomfSk1Y7DRjQZ3PRMUNNbXJt9p9asJI0K5VP
	AifNTkm/e92nm048vF6Sd2P8AV8JdXen1kxsL1K8fgmRqp43UIjb6RgruM8AIAdtyQR
	l9Gs1wDXVhYxxsTcDi94tihTVJ9MZrSX+fSdBrwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f15183ed0-a32d1a11-92b9-464a-ae65-421d951d2c1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc3d87ce1d7e7c25d733df4a21762752c20774743f51f30b38801668c8f0e108
Date: Sun, 20 Feb 2022 03:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645326384
