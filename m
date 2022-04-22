Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87E13D6D
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 00:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650585838;
	h=To:Subject:From:Message-Id:Date;
	bh=lH6WFmYyBjuB6oDHloPV3Se/ftXy9Ol7IdhAWCW4/s0=;
	b=Y44F1mdw3yrzNzpKalls54ymHDDxbXS4SonkSrlqH+3UT0GgclgWbCx/yB9OdsM3
	v8J9rzpSz9xNE0cznYDCjylSEuDhKitcNYi4G1sxT2BruSx9pFqqmrToDIeudlavcLl
	dbSpW0ZfPRR8SXLG9ECSyznyBnFaFIiM/CdCJwd4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650585838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lH6WFmYyBjuB6oDHloPV3Se/ftXy9Ol7IdhAWCW4/s0=;
	b=gph2gGwfUD0VPtBnPCf+VS9sI7Xydk5kWPrGLe0uTCtp5NE0vMvKUbv4vC6gwcwz
	6yLIpFX+si+IvOPEnabIdkO78zNZ6EbTTkO8paGdR0r+hPw+pgcbjXPqpZQPQM0THm5
	QgVEiDn7BIB1zzsxoKqHn9RjCB3cq1zS197xkehM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e952293-e0210dfc-6903-4947-9a44-df76def2fd62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1db3ead98940a2325e95a7e3afa0dbd251cd78f652d6b267f2c2985dc637eb8b
Date: Fri, 22 Apr 2022 00:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650585838
