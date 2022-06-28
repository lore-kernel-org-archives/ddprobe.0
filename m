Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1320C3C35
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 17:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656437812;
	h=To:Subject:From:Message-Id:Date;
	bh=n7j0/0MtOHTW8zzN7WxFUU632DtRePvO+27WyOb4tPk=;
	b=I1RcSyAzWGs4lnLDLPzzxaI/dFGayETkPYX/N83S/kMHczzQ0kO8QZKUoUQ+ih9X
	E78pjT5xdh0cBzASHbkUG1aj4kKGBde6FouWCAsLf76KRKXx1+tShoIyWBtgg1aaay1
	m+pGawiEveAt3soIv778WGg7Pz/gljpUbxga87oM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656437812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n7j0/0MtOHTW8zzN7WxFUU632DtRePvO+27WyOb4tPk=;
	b=ZRnjERFHijnU14drHKuOftosK4ahVm+sTF+rZI+z/gUEQhhvn0iiA3p8zkfo/Klo
	Hi2CGqePUcCafanHCTCuAgJObaC3Y9d3wHjubw5QpqNwV+zpFKzke581mcgQdn+eMgP
	SD1yF+nhOWmz0Ku0e5x535vqSOfwDO+PvZLypqwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab632ca6-a80a4c2a-16ea-4d33-bd96-cadaf46dbf89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b392f7ade045d7cc89df6f5f3a2aa146f7ac8e22b875c3ebaf376e4bfe73014
Date: Tue, 28 Jun 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656437812
