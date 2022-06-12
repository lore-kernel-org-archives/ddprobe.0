Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A32710E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655050619;
	h=To:Subject:From:Message-Id:Date;
	bh=iqsUzKSYNq6+Bx7Ua3v7oTlK4LVBLFH5C5hPEzE9QPk=;
	b=eeyk0VVtAdu0JdXk2HhuNK4tp39nJYCL0gwhGRs+OhvutIblqact1k+D5shp6TZL
	RsnOS4prSFe4ae8ctc9/KgfSKmHTa6QpQKStmCKOS++j7q1dpAOxL/8QslnnD0/Q9DQ
	hU1wUi1CcF8tWgOOu7uaNfGxuc6+QZOhUyNKJgSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655050619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iqsUzKSYNq6+Bx7Ua3v7oTlK4LVBLFH5C5hPEzE9QPk=;
	b=i5oOxXs27+zB9biiEINeqv11oHtxqVIcyOppyGshyQlcqau/EPaTE6vhnkUzgYCh
	IB1eSo43pVAoIf52o7oc7ws/fsAnIaqAFroQcVEUANldD1uRdp9x4xF56mLBsdCHGpI
	cK6ZtEsV+7o1HKcQGOFkPFAz3WTv2vbRG52zAMFI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158b44988-257fa572-3ba2-4096-b7dd-0eb20e62e59b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab4c58c76698cf11ccdaab2b4e8f1185faa1b9c881c93127e035c66061ff3676
Date: Sun, 12 Jun 2022 16:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655050619
