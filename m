Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B443C5C8B
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659294653;
	h=To:Subject:From:Message-Id:Date;
	bh=L/Mhsl4mCB7CDXNnNhCbXQ0lVI4ODW08FthX5zLqfEU=;
	b=GwqmdxAxJzZdDozx83mbQO6B9+Ft4HzaNCrz+/Koo4V90OCqp6vv6+68ZcX5ECKR
	TCRDz1S+c46P7ujTkgSoGHSyPDbEeVRK2C7VBz6rY19KFWwTD5WWmAcCQ0ZeqSG3gCU
	7QhgxCUHIAfWjNqVpBkk/pGWV3p9rmSenw3esXoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659294653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L/Mhsl4mCB7CDXNnNhCbXQ0lVI4ODW08FthX5zLqfEU=;
	b=GE1qXZMA7TVsm03i76Rts4gx8GiXvdRfDbSAinXvcMlut3xCKjo0cmaEo3+gkseT
	FByEYI9tn5GnGZ+NYImadMXmcStbbuTIDk0y09TaHj6UCj7N4bV1p4EQqb7Xqx2RFWq
	6Uscwyj8vAQ3ynmYkVBsLqj4vTNp/dyPc1X3vBFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255ab18ad-35c9c830-5720-471a-beb4-8f00f6ad2d81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83fa9c0b3f237ab032548bf4d2a937121c2bc621581f3500a973fb3a912c03a7
Date: Sun, 31 Jul 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659294652
