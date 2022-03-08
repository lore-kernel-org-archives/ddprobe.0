Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B10D2F2F
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646771184;
	h=To:Subject:From:Message-Id:Date;
	bh=kCU2NA/0Oi4R1+mx6aFRSerhtKb6z1rUqkYf6rUVEPY=;
	b=MtmPAZIkJRZA0/plFFuFC9dfKZDlaXGPQN4T+K7N2Hq08Pik3Li+rpbtiXBVaN8l
	9JGPxhsUlSLt8jvIL5R25Ji6PknfpE1c7MBURoxJeCQ+D+/N5SNnB64eXAVwknVsCR0
	aympIqBTs3T/EqT+OgS69qz62lEHpcPv64yM33ww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646771184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kCU2NA/0Oi4R1+mx6aFRSerhtKb6z1rUqkYf6rUVEPY=;
	b=T+gEgA0j3JdW3551M4XEk7WSOJxz3OQLp0caTCB7EegFTDsPVPVJYu5WgowCR0+I
	Hu2BBbd9xTFW9EZ+cVxd8jF6q0uMQqVESto+E5WnLyqFh7WlYeN6WgX0bXJnbQuSCs9
	3qk5XsBROxB1LNwRawVtbEnAFnncyp5S/HmOGPzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b362481-9226a848-2737-4776-a88a-b600bc2306cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 050b6cdd5a9f537ac262095ee74504c9e5de728cfcbc0ccf6666aa0a805ba7f7
Date: Tue, 8 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646771184
