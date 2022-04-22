Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA84C2901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 16:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650643978;
	h=To:Subject:From:Message-Id:Date;
	bh=3LbU8y1iwrwPmfN6YhyzAFZwIa2TnY2RAn/BDMAQ32w=;
	b=PoKEMnvnGcmbw2liwmgDroO2mBqFLAwuC76E0Fr4GNUVV1km+BNDEBsE1qhRtnvr
	iJ3icXZkuqR9DQuAfsWS+UjnDb+56XaQ6w1dLj2E/OTgp41DZJGUdjzZOVZ0hg7U+Kq
	UYi5iY8onwnTJdNFhkWBMHqSn+Ogxkp8t99wie10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650643978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3LbU8y1iwrwPmfN6YhyzAFZwIa2TnY2RAn/BDMAQ32w=;
	b=NYbcz64AJroWWQCKtogMkXX8DEp898GMy9akVDjYjNxKFK96x6PLcBIBdqlb4H3t
	56joGjz2AVLaYzptJn4r6EztRO5PFYO7tFWXooyWy8aeaXiLXQeOP3HsFTlNsUeNcOQ
	zsWpK91LPjGvqO1x+kyP+KsyA3/6ttL/Z9NA7cPM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180520c481e-d3526b38-93fd-4e6b-b1e5-3fe2a44e2e97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9a1d07bc36d329ffef8d1f2e540654d7fb779901e4376237df16bda4eb40f5b
Date: Fri, 22 Apr 2022 16:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650643978
