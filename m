Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373FC2F28
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 22:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652395439;
	h=To:Subject:From:Message-Id:Date;
	bh=kyBWv1k+aDewpv2prgRKeLOkXNMpeuI7OQbyaz3YPjo=;
	b=GFKlKX4WG+eVHlMjchsEZX5aT6JncyrQFuWiAJQcj5MEPrbAypnW0oUktqy63B+k
	lK2Ddv2uS6dwgWCVB4XTtgl8nGpyPeB3Vjyz/P3V77WaXKG0k+gwg4cqDQqRpbVG6TX
	k5PLu2NQvNBhLmPzbS0nZJFU1TcrkQtPdBKsM/N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652395439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kyBWv1k+aDewpv2prgRKeLOkXNMpeuI7OQbyaz3YPjo=;
	b=HMJ1WLmU5jjjiYa5lftEWwSNrmoJUUHsp4Expl4yYVYLyJ8owTvAdKE1E4EYPCzD
	OKq5p4WivRCJUvVSfOvfmo0Io5bflRY6BDth5lnYPvelre8JtpQlmtbc1NpiBFJX9cP
	AwEEY5jsWpN11FDd2/kriAplUMIPRT6IeCo4aa8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba7174a6-e57a478f-c1a1-414d-8f2c-f3b7b693f4b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d4ea07da3e4ec61c4cc7512ecbc6f1d27546ee2044099124bfa197850ca51d
Date: Thu, 12 May 2022 22:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652395439
