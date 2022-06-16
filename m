Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6226917DA
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 11:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655378519;
	h=To:Subject:From:Message-Id:Date;
	bh=mIDRbHbDBgdA90byYqai/Hm+cWclfOH7lriG47+J1Co=;
	b=XU0NFlzynDTBJ5QT+wGNC7Y9bCXqlA8ylmgKp3RIti2ZPWM3j0KsBvdwkTGJWqZs
	nfpqZrs3MX0BsAyObnnGONHMiHR1bDkLax7eJXdk5UzzsVffvcfCUbmljNbxJha0LAD
	pAlOnol/JM6zfjV6rxs7/AyN96D1NZ0mJUHveYtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655378519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mIDRbHbDBgdA90byYqai/Hm+cWclfOH7lriG47+J1Co=;
	b=jlie9r+S8+6ujKFVI1ZjIOs2FjDCi+C6dO7LxCMRrDNpEAb8bTpqrj+LsB2EJFMt
	mJs9Sv2i8CL1OsL+meRv5saESb6D9LkGlhBtk3lqExjXCdGOJC+YU1/xO/CMaIOY6CW
	eBSLf2fxMlgxpwHNxxOvBkBXRY7m52CQ0LAt0/6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c3fa4b1-bc41f50e-b4f4-44e3-9220-44020a6ad4a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81356fd29228ff95a3138461bf0ae525aca67858acdb6f5eb6e01d2174cbd93d
Date: Thu, 16 Jun 2022 11:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655378519
