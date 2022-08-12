Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F3346AB
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660331452;
	h=To:Subject:From:Message-Id:Date;
	bh=lgZuWa9Lpz+bXXzds/yk3aP2wKYMdjrLDKB19ELK+aY=;
	b=THJ24LXOwD5htQlfaVGcRLyk+eMiljXe6xDkMMTwtYV24MU4iMYH8dMw5UAORQo6
	nz0PtME+M1cjD+4HfXcuLq9PTW1WoXTQjAJtn8Xr2UwkolR7unG9t5iKn4thj9vA9kH
	hWmpAbkLRLWUHQE6TGAZmn+RBb5MIfKMZazyOg3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660331452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lgZuWa9Lpz+bXXzds/yk3aP2wKYMdjrLDKB19ELK+aY=;
	b=TWBlNcBJgDr+nCQUmhfL9/6ijf/wdTU7QRBYmAnYIRtLkiFQ7TRRnGvhKcybyvcB
	eDmkyQAXTqw4jFosttAEldBAPzPZilkEBfTniy4Wpo870/fCRDO80Cc7/tv4S3Z/jVN
	dOYasD74asJuq8sCyNh3dhjRthj14Lh6A9eddF7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182937768ad-cb8891e3-f5da-48ab-acbf-5f4c3ec7b871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25f385c2f049e6a1c655d865d5554e6371b03a913c16b39248301711ccbdd380
Date: Fri, 12 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660331452
