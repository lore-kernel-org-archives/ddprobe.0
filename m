Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A20C1866
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656734812;
	h=To:Subject:From:Message-Id:Date;
	bh=o/tobgbxm6jsHsBbmzdCQv7UZuYhxBqQehFElq1JhiA=;
	b=DFBrlPNhEZQ8al51q958H2vhucMxVhOAvQBYOHgJ+kkla4abbCkh3HuxrNA+AYRy
	VYttSILr7PpaHmiuDQjyCt5BsWG+BXylbHmQuqKQW+9dSiKJ5MD2F97BNVFfQwdgv71
	rjpIbVfz26RCp6Lv7KogD39lGYfmj2vdtlQmwhgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656734812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o/tobgbxm6jsHsBbmzdCQv7UZuYhxBqQehFElq1JhiA=;
	b=N3saMz0n2adcvGLOA5JvetfR2reCDozPndiMrxryNwA2VItgdwBtEW7VDsH++WQQ
	kPXDrlgjrnLko/3wgD9TRmzE+Apya33gZb7Cic5G9flhXfrI4mXyAddOEwf1nF9/G5C
	c4P7L3aDFsmujiKUoRsNpgLDFhoVAwVk1xzQJaO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bd170893-27eea95a-b687-4364-a708-daa2befee595-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df28d3f01467ee2e051dc2ce1bf261e6311f1b5e843a80bf40b88913f9b06280
Date: Sat, 2 Jul 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656734812
