Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84794187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645045285;
	h=To:Subject:From:Message-Id:Date;
	bh=m2uMtrfdLhtuxrlWhD48zp+DJxHIF07Ty1/c3l9blaY=;
	b=K2TnM13o1MzoA5QL60BZbcs9tbgNWJJPRDq/IU9Mq9KKluUYpHUIdqWSKOzF9K2p
	Ekxi3su1Tnuj+++uxY5zjCp5NM2H1yhbCsL1UTIlPBK/7QBkhrh/NawAjQGax2HUwow
	DktcUWUdk3B3xy97P3GcIvH6UOpwhtdjNabMQ1Nc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645045285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m2uMtrfdLhtuxrlWhD48zp+DJxHIF07Ty1/c3l9blaY=;
	b=Aww3f5lD0BuVvt00WIYZvySuqieGJuPT2FYvnmU0UYGTKRjaNhz02VVIF7/79wnE
	kuaaBnUlZydYBMAkjd2AMXUPuZ58H7f/0pAJCOS8kgxIGKqtrN5Le64jcPr837CuT+a
	xADhVov399SxYy5RnvH4KoZWbsYoOrvxf+1ARB7M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0456ff8f-236bc9c1-03a8-4618-ab8a-0d055dca3d36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9264449e022e68090292be2ed3bd82836beff01e1a8d03e7c07d7745ef5e5724
Date: Wed, 16 Feb 2022 21:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645045284
