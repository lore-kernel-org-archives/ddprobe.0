Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9C63201
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660223452;
	h=To:Subject:From:Message-Id:Date;
	bh=cmriA8hzwCqBF5q+ZU9hz4tY6vmn4MklANCge67KDiQ=;
	b=aiGi734pX2EfueUHGFvf6XraCgSkj9z1tknY8TddxyHyWgTDwO+52zhpPhT8/980
	L3NLGr9JTieiDaxrTOKM0pEUBXQrqAsRxPNu/MHCXx7JPD5mqBRnS4fTsOvWmjHNJwR
	xHISe+LityMKdwVYpqVTUkql9EHhXjYOsyZhjfwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660223452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cmriA8hzwCqBF5q+ZU9hz4tY6vmn4MklANCge67KDiQ=;
	b=dsTggM9YLGJvr/w75tdxK8XaxPafFoU/2lKl3XkvtQgwLy9dvzqjLPFVyq+5RZiY
	x6oUjhNmY9OpDfZvsxaXifalJipBRcmS1pR0/64UIPm/6EPM61pPjWNanNc3DdQ/v88
	8OdKpT+5tUXCwMoVGcT3uBVG8TTCzOK9kMt5qqso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d0775bb-02ea7cb6-a9dd-43f7-8bd0-ffd80ac20b1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11b6ac1d066e1a9c24b50e6c932229bedb1197f1231083de60a521becbad11b5
Date: Thu, 11 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660223452
