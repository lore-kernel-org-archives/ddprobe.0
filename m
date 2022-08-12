Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE0B2119
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 17:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660323653;
	h=To:Subject:From:Message-Id:Date;
	bh=W1dzLWgC3p44aSw1y69i3IWCJ3WscN5RtWef6WJO35I=;
	b=BMmlkd7lrBYdTqFj2WwvnnPVbgkh0QsLzFM3FwSST8DtwgRuYMe33Ms6mBgMRQ9l
	GPMYSvtrkClxq5aVDY9CMJDvmSNrWy5SLZtDt05qVrUVgbNhhybJzAa5TfTVtz8jcO2
	hw84cqZ4v6ZsNpQC/R+WrLPG5J+tSA50E2W915Jc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660323653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W1dzLWgC3p44aSw1y69i3IWCJ3WscN5RtWef6WJO35I=;
	b=NfPFZQigqEUTLemsS9ZA2YoQk/RsTGFKmLxDaGS5BLy/CXC7yug3xM6k/lYTm2Cu
	rZaXPGkgyq3+KV1Qo+i/V1MkSPcbkjFZsUSWbHZ6C2j+6ZXrgM37erKwQuCETrmoyZg
	wDCU7DcxNkwjup+IFzxsLroV00eA6MNrKLvdwWlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182930063d6-52e4a994-787f-4cd7-b862-8a7164705910-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac60094caf2d0aeef4d5fe0ff1aaeb0d4822288546e0fe5180ad3eea3fcc2635
Date: Fri, 12 Aug 2022 17:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660323652
