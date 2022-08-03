Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D0B3211
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659555652;
	h=To:Subject:From:Message-Id:Date;
	bh=Io0mfUN449nHSJQgtIwDLwYUJ5nrq4U3FEZzlB2Fupw=;
	b=KhyUtRjjm33Ue5/lM8Pq1ha43OxW/gkKZ/3422MNH9ULASGEY2N+vEmInpNdWhP4
	gnQGLdIBPB779n+7QKFx2RaZsRJ/LdJZTzHOQtpSMSaLXy2P2JD6lic3ozGDcJSJDM2
	d3pw5J783uh+QUIqD6AhzUeh/bv7H7iFQJg4TwCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659555652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Io0mfUN449nHSJQgtIwDLwYUJ5nrq4U3FEZzlB2Fupw=;
	b=VB6kucQD6fkGgaEYOBWbgqhOa/SbEx23ycJbGRuo6bUtHQBQf4cbv9moitvBMO25
	ouKPjMX4AGpTMv/tcqq5WVotbcijhzKT0iIjff/9WvrJo4ztJOzwdphLC0NJ7S7gNZ2
	ddLnV/16CwkNN61eNh8VfZcmSVy8wduLKhKoe1Nk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826539a3db-67ce18df-f362-4701-8c2e-b6f7bc184103-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8718fb16c9ac5f4c4b40e29db41c268553fd604224e6a9c5a9ad85dcf40fb3c
Date: Wed, 3 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659555652
