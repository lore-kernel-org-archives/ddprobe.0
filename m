Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A5F36D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 02:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654051319;
	h=To:Subject:From:Message-Id:Date;
	bh=EUhJhqmTamrcqQ71sJXJovky3fK2coX/7BPy+IK5PCs=;
	b=WItYyADCy8rRHUHu52N+bAQ/66FgTwjovDim6eHi5XTNSgmCA2W9AL7lfUTaG6CX
	DrWJ7l/mti1/7tb5ysOxTbKWisnHHp8mMNcX8S2lxlo6/keLYQnFOXMI182KQ6g0taJ
	PbiUCiARjLwEZrECBQQafXycEGdyFiN23cy8RfNE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654051319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EUhJhqmTamrcqQ71sJXJovky3fK2coX/7BPy+IK5PCs=;
	b=WgxjIv6pOj9w6bFXYgay6jg9iHzxvLHWlzpeQvIANxLS1nOq+MLxkRn/wiFjazSI
	vFbzWrR35XoGafsfrojepdvEQ+Hp3D7bvMCoL/m6xhDtpDA3uhfmtTDagNiG9jJ7H30
	MmCSKReURLiN+llNfoV15wpA7wq8uo+YadqGtdC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811d242e0b-66fd51ba-d423-414b-b3d9-743b14c6a675-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d218631ddd9af5202c806b74a4f77714af5e154be202af0ed391bf4780305607
Date: Wed, 1 Jun 2022 02:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654051319
