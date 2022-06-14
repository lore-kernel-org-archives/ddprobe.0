Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236AB1FC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 19:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655236739;
	h=To:Subject:From:Message-Id:Date;
	bh=HRCS23geIfgoUcD6U3vz77DLhSfdtQxGGacfUP81v4o=;
	b=KwiSoldToZMXhGpnX/hl5AuEpV345IzItWVp3/+Tg+ASEIHvTSTRJKMFfCOqBC7a
	MnySfXagfvOIATzihOeHpgION4+ZovJutSn+kJbi+wSrj9pCV2OvJ/N5Y6gn5J0bnhf
	mshSnuX2UFLQ1Ulo+wOu/HFzQ6aNcorsJgxAeW10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655236739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRCS23geIfgoUcD6U3vz77DLhSfdtQxGGacfUP81v4o=;
	b=hB5ocCtiFSLzGNiEexfCj+uQCF2jJp8kXb3mxAUF4XKIy3fIQ7nzexa1dgWC5Wnn
	bXT2BXcH6CtC7iKOJ+NFBfPI9OJ+KuPhAEer5t2SL5tbrpCXRBu8XFQCHpzddzeur9/
	BhzMs91SQw9TUFRrHWFxZ1/jvvAC8jU2ltPGuzMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018163cc408c-8f54ee61-f812-4675-b357-213ce6674dbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e6515a8dcfdf68e322b7c95b821be8458f7167c04fe11ae3b406936499fd656
Date: Tue, 14 Jun 2022 19:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655236739
