Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1B87F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659385852;
	h=To:Subject:From:Message-Id:Date;
	bh=ewUwf4JZzuOTA43766K3bhdqUgW+qMnaiYI2Gu1iu3M=;
	b=K3tH/DOCd8+0k/qXMsBNGqnI9R9kvLbGqCzrJ8ZxbuU1/qO26f26iIN5BTBr5pwh
	uZp3aI6wBy0YnPs3YaapJhZ9kAZObVuemY32tS2876jq0TJVjoyQJ8XdIHXtRv3iNfi
	kzFO5jjpUx9LWsxih4HE/BxWJr39YZgkspTHKetY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659385852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ewUwf4JZzuOTA43766K3bhdqUgW+qMnaiYI2Gu1iu3M=;
	b=B5Fpu1dSTn1d3BwtkeREx+ID5gk4KjEysNRHWNZZNqX4mYD0bMSatppgoGtMHRVO
	IdCCy15y+CX0eq6kiRh3zkONXo/KfM0+dzLsBmEZsPP5et6S/qKmjCX/VUUpbf2Ic4S
	4leMJNTegzl7DF1EiUCPbDMDKhKYMmDq1VVnusWY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b1ab29b-e7560db1-331e-411f-8c0c-ce35179b332c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a2b20d1136b9393d7447ecb3b8f2e993caeabf770a0abb2252bfab6cbf69f13
Date: Mon, 1 Aug 2022 20:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659385852
