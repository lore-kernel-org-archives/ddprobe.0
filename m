Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407644428
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660056052;
	h=To:Subject:From:Message-Id:Date;
	bh=MLA+IbahCmyCBac44q93Iddvwg6GzZQa0Gpj+cQBLS8=;
	b=d2Fj3KGDGeyKr3tNwgxMFdVrxHbKdaE29ffoS6VXZn/tQitPDiFKROQk3f7Fiiff
	E8ekLUiwak99HHpLWEPuEIvOX+fLRblb2m3CXW6WpKlvb9DGOLWdS4LtF3ASN1JTKID
	AW5SQxszMEFoOPeWG8hTv7sU8VGRhQQhvmrvfo5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660056052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MLA+IbahCmyCBac44q93Iddvwg6GzZQa0Gpj+cQBLS8=;
	b=bg0aGviw4TdyyrZItBKhn3XuNeaMd6xf54XrEIqHri87M4nr6HFAmZIuGHHHp834
	wC/hgxaUvOFoGbZufsKKj/sWL+V1Af/tzwPB4NYZRq/JCVSrTDh7zYPTSjQjvU7LyHt
	I7sezNlBa+DbYfXCdHsbt1tqxYmK7XH9DodCY0sk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182830d2386-d4899abd-6b7a-47c3-aefc-aad8e14ca944-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b459fc01381c82993a955495b8711fb60a375c4f57bb4ad786e04ed4dcb91507
Date: Tue, 9 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660056052
