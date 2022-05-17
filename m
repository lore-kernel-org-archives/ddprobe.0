Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513977A
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 19:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652814059;
	h=To:Subject:From:Message-Id:Date;
	bh=h+91fp2QYpq1jQnDvy10cF3qpg6JttLOFuOxhzCMzIY=;
	b=Sb5zOmfVYfCzBZdDsKA9NpC2A2gOJPBtg4x6yeXu/BPbSVoxR4EMYPIN2n//oNRb
	KXXw/KOAI84EUfFPEipztDUYqcew4ExsgsLERM3vH/0NqorkkWzmSo9vGadbRpHYDGV
	V2UHODQMJGGPjA64yFZ/z0QsDeEoVuPkVND46aNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652814059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h+91fp2QYpq1jQnDvy10cF3qpg6JttLOFuOxhzCMzIY=;
	b=WbjdYxr/0YjRy67JnCq4o9NgAh67XFNSGmfP36Sc5nfKxQVjlHkYWRSA5eiOvY1c
	X/vanSHP+5jz0Ez2dOIBOAurinfISNVTIqT8GQsU1Oy/L0+ygL1Y8WMJvJDOee1XTRW
	qoEA0Yxfnbs9TnS1bD9Fz5mJX2RmasOlFLCKCO08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3651793-bbc4bc1d-2b37-4c63-b322-19c9753dbe77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d2e805f09d9c9578bcec5d1245695fb9c39353baf32aafa9df6e824a784d58
Date: Tue, 17 May 2022 19:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652814059
