Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869387A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 07:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646898384;
	h=To:Subject:From:Message-Id:Date;
	bh=0e5SGnm+4cuskwajHBPZER1hbkyd9M7LKfLdJNnVw0w=;
	b=LJWlH8roZ5FIkIoRFFC4AU4nh1VsNAJTQgdTylthju0n0eIFIrEN1Am9vLBYKi/x
	oPYdt8teIldEwcmnkAtySQyaTeu0+mnXiqD16iEWA1a+L5JMpbvSmdXgr+5MaGzzKQm
	vix+qeay1G5krDQtLnAYu4k2pMD0UmnfKB2KlUTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646898384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0e5SGnm+4cuskwajHBPZER1hbkyd9M7LKfLdJNnVw0w=;
	b=Xv66eA+8eTrIYglBuRM/PADViR7NKFowtVLEU2SyNAOUM2nu9ojEaeMX6O9tz2On
	RcqAhJJ1R11ZlHi+vHzdrvbQJ8huLgW5saVbFdybdsjOHxw56zVSzEMpxbngS13c/EV
	nijgAG4omGoYdROax4tZiRbGtYSJ3T+kDeoZscHc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72cb0f79-c839f8e7-749b-457c-a2a5-f07a3d297ac8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b261a4d0b9959234b319e6011a025bb04bb326a674c986a46f01cf85bd87d3f3
Date: Thu, 10 Mar 2022 07:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646898384
