Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E190B1865
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 16:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649695798;
	h=To:Subject:From:Message-Id:Date;
	bh=bmTgHmYWMG/fsQTsrQycMojgTbknIJiIzpf8wH9LX0U=;
	b=WJ3zV3+JOuCxFYuRkOPHJnf4UZVDpBWlgEj30GJvQww1Zl4ZB0QO9UiGCCXiaL29
	JV2pOxe/g0xkT3V/QgeERAFgRPc09mXvBcBzswUNV4TPIRQQTNcAg4Kktbjvaua47Ek
	He1XK8wB+d0LKYrYKPVLYRtHLEDu1kvg+GxHLmwY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649695798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bmTgHmYWMG/fsQTsrQycMojgTbknIJiIzpf8wH9LX0U=;
	b=AMsqZ3X7Dp27TPydYxmAjUA7v/CeuurtWgi6164ipYsj0sQEqoQzIZ/9pvgteO7K
	P17HGbbBYT3wDeDxcLQtPOccPwudAoTrkwhTnLcZAtWwv7No0QFW52Zh+K/9T+IYZ2J
	9Y2/iHYD6CO1e9WGXG+DMuzJQNLlPb/EXeAz90Q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180198833df-b95f44af-8c93-42fd-abc8-e55f471a7a51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 940a9b5916986d8aab44f79d85563f04af8db0882220ba55201a2c341a79d2f8
Date: Mon, 11 Apr 2022 16:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649695798
