Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CEE43674
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646650584;
	h=To:Subject:From:Message-Id:Date;
	bh=HaX+UxeYXwNF2h97A2AvtKPo5VZcg2liyz8lYs2Oh1w=;
	b=h3lF62DFw5l2hrik1NxnJlFmsEt/uZOK9YGfT1YpaEzbLH+2EapTqQSOZHaRy8f6
	WMO+rpWiyDLcN1JBF1I4xFY+gltFZnPcTiQIKl1P0DrRIhGCNFaIbFNDWVKcOmiTevW
	hDPkoyVXQYvYakwY51WQM2ynpU5yczzw2W8Qfuto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646650584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HaX+UxeYXwNF2h97A2AvtKPo5VZcg2liyz8lYs2Oh1w=;
	b=lo9isbei85FCCSGLdmgKWw8f54A4al+tpGVM8pazoS8jP8j2qwMZh1yrWDy8mX1s
	z5mBDLjWuyIMV8/YloeK0OSuAyCT0ISnykHBLtquktzU0pSBO3VdAIkS0MGZmvdRb5Q
	azMlggUREwfgduvrvRzrltKLWuEtJwJ10Frujn7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6405eeab-3de0bfeb-9dd1-4d2b-9923-40013d4ee77a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec84855f0e5dd784ccb96aa023c568f0d2721fa994faa41b6552f594f047f901
Date: Mon, 7 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646650584
