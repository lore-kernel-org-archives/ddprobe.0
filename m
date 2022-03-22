Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC177A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647932184;
	h=To:Subject:From:Message-Id:Date;
	bh=cwxCs2fmxQx8HqOuqyc9sPjACncgAAsahouaTUBCrp8=;
	b=CLXsK3LOPSf1gTnFaifoLksX75qWt+DR0lmY1jbgZbzewHzR3TT1Cane/LGiWhKr
	MoIqZ4fIGvrdlksw6vwQiToa0SMAVLhzr/Xod0DvkUoT4cxZMSkX8B6X4SKVy5vFslI
	zuWInKuNCvumKGbKwgLD0vVKmXQGrkTT3dm2T/gY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647932184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cwxCs2fmxQx8HqOuqyc9sPjACncgAAsahouaTUBCrp8=;
	b=Ek3B2iy9MWXPhi7ZPXZinYDFhutJi992gjRRGcwDhWzma8R7HP4enOBxNrfqFHKD
	y5OP+J2Y/d7j+93GhWJGebJW8Y2pykk2Gb45VR1agrrCidkwry1hiVqNCe5wMCco+Y0
	WRmXFaeREBOTT6qlfwMZcG7WB5b4M396paIZHX+U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0699895-d787cfd6-5e45-4626-8c28-5645dc1e143d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1d68dac3a0d48782a1cc6bead6db1c0f0373ace2d67080ac8a0d1e9336b48aa
Date: Tue, 22 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647932184
