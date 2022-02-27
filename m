Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 763B92F29
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 08:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645951884;
	h=To:Subject:From:Message-Id:Date;
	bh=zzDKVHknWrtwujocRunnHrqvFjLX3QznwT9XfuPsXwA=;
	b=SQDlEctehwxRvgcpmd/phaX69g30hNnd83v5xLFzk5SexTrioijZibLkoQOFB4YD
	2lwTYzc+57A3eFRUqjSzCfmdGvxfo7BVR/UY1zaWBBLqOWoQF6u2tOjLm3cjPbYCNr3
	7y7hYXATHuvFYhM6SGqYz7LRL5I91aGFrKXax93c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645951884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zzDKVHknWrtwujocRunnHrqvFjLX3QznwT9XfuPsXwA=;
	b=IUEyVosmlHyvtdOGCY1YcPDyY6wsSy+eFl2JBzggganckJwCca2pvedAxlPYQ/P2
	PSQoxRJodvBkU3C8PcOFMC+4vYKGTwa0BxShspHyJ1HU+HugoLthHr1lkl7hB1D8Tr8
	2KctYlFPQIaRrxTVIcHcve2KMtesAc30obum50kg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3a609dfc-e37c3763-185d-4899-b98c-e63113540e46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ad165576fc2a2484799242da51e91ef3c7b530b83597429ecb49a670bcac816
Date: Sun, 27 Feb 2022 08:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645951884
