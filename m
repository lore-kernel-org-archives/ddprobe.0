Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC757A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645574785;
	h=To:Subject:From:Message-Id:Date;
	bh=/2FvmqSs8nzhe4kNRpPySYipfy07JhG6ZEi0P30vDPQ=;
	b=TblmEVMg1W8Xlct55xKyT68xFNHTDSExokz5NWFUNU+O1dQ+lrErnEXUWAgI49uy
	edj37S14IGb1pS3WlIdUDbpuh52tze5nP96mt/xbJxHpOlpbACW+8B7Rj8urC+gML1Y
	ZOLuyqCtjHdR1hUOkEEKYvwSweRryJx1wbSHs8U8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645574785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/2FvmqSs8nzhe4kNRpPySYipfy07JhG6ZEi0P30vDPQ=;
	b=QqGefz5euH7pYUaw0IoiLKjO3LKpWc3zTCqkc1tKMxAF60SMXSrGTiyXb4LUk6QO
	8QW6eSywFWS5ex99C5OdZoXoNv4qAWu5+Aoo0DSMgTgqyCzjETiyvKhfQg0+KGZz9U/
	Z05HxR3TnS1tCvuvwKftxgxPHbX9yihb6Rs+aSJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23e6872e-1369aad3-ce2b-471f-880b-5ec9d8fa5ff6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 756e2d2e74596c0451c1c92381db61571fe3ee029a468f25932efd83a260b0c5
Date: Wed, 23 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645574784
