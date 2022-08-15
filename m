Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 805301102
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660547453;
	h=To:Subject:From:Message-Id:Date;
	bh=MjA5cdTOSsKzPPORGld+lKxEiTSjJD4dk1upQ7H5sL4=;
	b=I+c9380gy3hh2HxRs9fSw5K7xhuDSasEIsmkY9klgqIwQNU4ZQZH2ZCFA6FC1ACQ
	UXw1qQnsyVZU/Zra7VNwMp7HPXcHI7u1E1VxRffqBLxFsd196LK3PsKxrZsGi0UMeRU
	Ly/FXg2cwgWH0E1InS8sOuffeOvhIfW9aY+doW1E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660547453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MjA5cdTOSsKzPPORGld+lKxEiTSjJD4dk1upQ7H5sL4=;
	b=CVMBLTa3DItEpdcItxqWMxNquugTvsYvqFqZMpKng7WV9YnaPI4pfjdnZLii/Q4o
	tw1fiuggjk8NY+FwV4RxXmfrt+XxOKylav0+KuyWCV9XBcOvOC2TYa+gQsohIZBEEnE
	absUfzbR8KTe87TpZOJwpw1ymdbNLfWHUurq7aas=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a0574efb-3d731095-a3df-4844-8e25-f5d619526491-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b742caeb4f8463b08e3541e9db1889abc307574b6def02a0f1af75b1a7fc40a1
Date: Mon, 15 Aug 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660547452
