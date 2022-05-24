Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D627C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 11:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653392159;
	h=To:Subject:From:Message-Id:Date;
	bh=nBUz/4FqR4wRttJEtJOfatvYi0qy8Fj+NWAobjFZnZ8=;
	b=QzpY2G30DtCL8gbD78wMlJ2qxnaF5QL0mmn5s5Oc8xpbslfpnqEMttQq96ki4jR+
	eziosyUYRLSLU7pTysfb5HEC+cUYbufxjDXDXqa+qK0TvfJoEt+Re7qop6sJMuljwFg
	tcLg53XhrPJCXVhe5GJcBJ0u+q3FZEZne0lS/ApQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653392159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nBUz/4FqR4wRttJEtJOfatvYi0qy8Fj+NWAobjFZnZ8=;
	b=h3+riVzCk8XSioq1/qVtaqdO4oFd17IpyDGezpugTtpjUZKQgAWFfPh9ERy7M2y9
	/oGMAXOQa3VXAjVVBg+5Ysot4bW5LoSC+DHu0Uz4uEOTvigeNqNTYjtm3FqXbJYA96i
	mbtE2JUfoUmx8Wb4l5sa9xHgsG6IWITFV8I6mF5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f5da3222-fcc23d40-4c37-4baf-9d01-f7bbb8d95ab4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16f1789e2a5d7f533e9a9b635ae84512d3a0c29ca440e22ee8d7e17fdd00af34
Date: Tue, 24 May 2022 11:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653392159
