Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E72F162A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 01:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651798978;
	h=To:Subject:From:Message-Id:Date;
	bh=2XNg3hR2jNZbUudiCv2U7NJq5qOZLaeCPpVMveY7b9U=;
	b=MsETPe0v7dxQvQsdyV2E+S7nx/DKfzTB0UA0r6ihHgPhwM/lR/+9r+c7yvcVB/Lw
	B4YtQejjS76Q9IkDR71lsyqJ9VLKyorQlQM0YSii6e3rYklW1Z2AXb8vgGwFy6m2vf1
	nHXydHBIdET94ThTnitIKbvxyuOdpU9P8L/yEnpc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651798978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XNg3hR2jNZbUudiCv2U7NJq5qOZLaeCPpVMveY7b9U=;
	b=C2nWvy9bdKWVmYRADXHReihNvvyWtz+2dSeg5pjFIkwl3C0cJMTOoV0qUeH68XLY
	uewoxvs2U+ADpcQKPJVwu2WBMBBG+JEWUJSBU6/xqcEZsDCC/ITxLriy19A7pGtAzPW
	+Ypd56wfH2hQOR2urVjrAto3xKu6AYNEu/nj8zXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096e42edc-aed04032-2c44-4847-b88c-694425a6d5f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d7c05ec01e00dedaad1432dae6c9b651a4d9671765c49ef704361975e3bc1b2
Date: Fri, 6 May 2022 01:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651798978
