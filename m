Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32DE198
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 01:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657762012;
	h=To:Subject:From:Message-Id:Date;
	bh=nyGmSOS+u09Ple6gsCin6rbnSDFjQwwB6V7csqUcK0c=;
	b=eZmEAy5RQmc/DPyX4Hnj+R9+Mt+7YGbv7bid5/fEpwbXjS/5GSmNLUyn4EkzIwTP
	X8t3X8jYvauj4s+XbHZbJ2/f1gQJHFXp/nPJibueeFHp5QGN/jntJDhHcrxUx6Qa2T5
	x15kPfigEenw9BoffZ10Kq80ODJYg9yx4307JTqA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657762012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nyGmSOS+u09Ple6gsCin6rbnSDFjQwwB6V7csqUcK0c=;
	b=cSOoy+7rePEFekZIfWW/ytPfhRPb5Xhz2nbRv+oSCrKNE4j4weWz3HOBRtIgR4U+
	Abz3/aVRSYDPtPvrz5NQHKah852yl6PYnUKy4ZLFdKfHbSFisjkeSt+P7br1FYl9PPA
	oO4VApO0DFq7NTOu8WfoveJOTZ5eik7sjyhlIPeI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa50dc83-647e5be6-ed7f-4524-b92c-7e74176fbc20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c0e0abcf18a096e5a1f36b0c354fef8197af15c24205f2cf0c81dcdc810db81
Date: Thu, 14 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657762012
