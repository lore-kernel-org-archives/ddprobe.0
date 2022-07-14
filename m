Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229F27A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657777012;
	h=To:Subject:From:Message-Id:Date;
	bh=NUi3IpG+I0S6z5Pc+Al1Df+9zx1N3WuqOYjUxrZxnVc=;
	b=JWOYeac4JsvvEOAoyNnMOhNsRxvSMT625jLAJAyoXzJrO4JHQNBWu0P7ZP4NFJM6
	d69eostyaYwkejyeOaubOjacYXgg2OZWDTxeU0qJ3JKF98FfPZrZ+TTPbRfwJiZGy65
	jBiRSE5nXYfH48buAJh1PaMIr2zEl0m9hPvZSA9g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657777012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NUi3IpG+I0S6z5Pc+Al1Df+9zx1N3WuqOYjUxrZxnVc=;
	b=Sz9sQFkxIzGXbJ8iqffSth/ccYnuzfrP95YoF2rD6d0qKf98XayvnpcmvFREpXvm
	+URxoeN8kBZPprtT8j4kbVrSe/AGtpibSzKRRpuI9G7uZystvDL1f42byr5dAZbF6ea
	21GDa13oMQEAi3Lqsc4oV4W8d7mx8KSoz5RcWo6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb35be43-3097a693-2d12-420e-8308-a50a21226978-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dde0908ea576c72779bac4c956735ec7f2d8c3eb46bf32881b70d66fdf7ce54f
Date: Thu, 14 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657777012
