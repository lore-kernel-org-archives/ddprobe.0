Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE02423CA
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 05:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649828518;
	h=To:Subject:From:Message-Id:Date;
	bh=bIsSHmeoPAX0cQYWCTTdTqnjp6uOk73QJ/zu4tN3Eow=;
	b=gd4d2LZc8Hk5hx8OPBbypFU+WA9/fPIJ88B/OX/ar35iSkKaXHvrUCyRW32qzfHG
	HjpJpI9zUn3XJKHps66o56KqX19ACG4oPc92KIpx1Wipo9QKwKQHJOD5VY0R/9ljhZg
	X04U5vx0Mi69lfdUV4F970wnnRfFlGV+ZFTHHTEY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649828518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bIsSHmeoPAX0cQYWCTTdTqnjp6uOk73QJ/zu4tN3Eow=;
	b=AAeaZ6KFVuXjd1RtAlFwUdbhIml4FGWyJdwsJi5eZB/WDRkPrYj28NY9cN/jqarj
	rOdeLsHkjXHIQiR94m2xh/1dpNlZGGC0CVaHeN3gOZqYGf2BF1i9gPysPBUgPkNszFx
	zYeXFR9QXV6LwGHjvMbg+Myl6ggiB5xg5Hy6zBMc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802171597a-2c6a81df-fd63-4fdd-b717-83b79de0c799-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24ed46ab5708b425450c915b695a79d8f36ada6a74516a5d3269e2a27ef39d0f
Date: Wed, 13 Apr 2022 05:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649828518
