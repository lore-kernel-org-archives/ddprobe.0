Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C23457D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647875784;
	h=To:Subject:From:Message-Id:Date;
	bh=ajZuLHpVDSor+AX7NMSF955rVX+pixw+B0OHLqChUF4=;
	b=JwZ9BD/aj2S2nWD8ts3MWpQE+4uFTGU8LSFi63cUqdj1tMLad1XFXS+d1vqFuUbJ
	PMnJogZ2dYu0aBBBXJOlYhJOJVBc+nxMYeYB4idu1Sk49sBIoZwW5DHkK63oPcJ5Rn7
	gJZGCGTQoZRJIkNX38qetnV71iBcbNHKgT/NO9Sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647875784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ajZuLHpVDSor+AX7NMSF955rVX+pixw+B0OHLqChUF4=;
	b=D80wAvgK/aFUp1tiDOnZpwoXUpVA0N/LIRhxzxG8LhR+JC1ZL/qNwTmYDaHJ8sWK
	EXtjvpgnH0ZLpMGdA+Zw6MnaxP1RUmkLIRzfqSIWWpf5I086tkiQrp1LbOtJ2y2i4A4
	rKL9RX0yj9Hn5hJ7XAei2N2oK58VXeSR3zQ/yKGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad0d0040-bec54e19-7601-4d83-bc67-01c80a2e9b46-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3cb4e04acb497bb015933dd8a949961190a0430f0489579de42a79d113f4d93
Date: Mon, 21 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647875784
