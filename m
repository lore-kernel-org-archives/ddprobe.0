Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 047426AA3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 22:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656454612;
	h=To:Subject:From:Message-Id:Date;
	bh=+RXZBD4k1jbe0xZyHg/t3mYAAhok/JbvlEevtPyHur0=;
	b=DWKTgYYNlWPGOyzIcxh4Q5zHr088s5O5i2N/qJEqnlKyJoiPM1eB+vO5n1ezaS/f
	pdpjTVs8yNrkLxWT5EhjoCySeXn2qETfRNBcb3tpGzE6TDwLzYBZwRJahKkHHFNfj7y
	xS+OZd1eSN5qDuG+JyGQP0hYu/Yj7xaIt8qwtdJs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656454612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+RXZBD4k1jbe0xZyHg/t3mYAAhok/JbvlEevtPyHur0=;
	b=Lgw0axnv3hrlJ5vxfuKlqqZqcjLUyexkkORCjuCmZ3PXjSzZ+79/wCjEnT4bsS/4
	2NL7wQij95ZB6ysoUHptN0z1JE1xN1HVqlhg4BsMMUwNh9i/08UovuqRn0Y0g1orboY
	udgN2mCvFV/hWeKQJe00O7qLkRLSc8sUCzHFAb7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ac638519-bc791495-30be-4883-af43-28d8409b6bfb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35f1e8a4358fcdf05c2d3847e9aec277b4a664d49d977b4754cb7a3dfa94fb0d
Date: Tue, 28 Jun 2022 22:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656454612
