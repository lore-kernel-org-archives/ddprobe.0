Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37E82C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656332813;
	h=To:Subject:From:Message-Id:Date;
	bh=OKfKAjXEYdYoa2zu1gaF+ElutDSqu01GT7DWL+sHZlE=;
	b=kV5wPXEwM7PSWA0VMs0V9AxTcQJaT0lfX09RZueHRR3lsV3mbMdw+8xDkmFQDZRU
	SAg8jTutmwlv+iR0i5UKo+hm95qBJ7fvaUJdRsQ6l1FiOsb8MxI9mki4QfbnsED4/82
	rdEg9IUQ9N9WrACL+VYfQb0Q7Rm6XD02OvQuybUc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656332813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OKfKAjXEYdYoa2zu1gaF+ElutDSqu01GT7DWL+sHZlE=;
	b=PNFcAXZmI1pNhK2RQKiQV1MpVbWMO84zxTWth3NhPr/6xajZV/v43uPJ3YlcJIpU
	XtqfKB5EIR2b7bm/MGkOxz6xYKXfpnxRkfhwTxR91bzEyP5RFloxITu5+LIhHu8MZSI
	2omgDHoaMbBQj6gbhp5GnfGPe3NE/gkON5qmZHmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a5210031-4dd872ea-283e-4923-a3f8-0e1198596c52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14292b3ffe81e85022c3f9d070d03cb4f8a2b8300600321554398ab1bf00519f
Date: Mon, 27 Jun 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656332812
