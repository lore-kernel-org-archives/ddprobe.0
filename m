Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F1618E
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656990412;
	h=To:Subject:From:Message-Id:Date;
	bh=xha9eif0YI4yYprXFxyO8D3BmSXYAwurg8C1VolN1No=;
	b=d5Un8bBLUhxkfPuVT5Pruv6Eit05/5q9hk6waDkDkPBDzZpBLzjad1UugZs1mP8P
	NhJQ9Uj0ap/kA9tsCVdSaX6XOnEpjwT52T9lWPkwKXCols4zhS+xrD8Ukq2zDQdV1CO
	7zJK+5FTNRMRYeWUtTtcaTKDs3erOd5oJYTikObA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656990412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xha9eif0YI4yYprXFxyO8D3BmSXYAwurg8C1VolN1No=;
	b=XBbt6F2sIUob5Bg2GIe9YdrRyf1lRF7nskP4I58lB3vcnDAY42+q9HWF44bBaCjL
	8UC6WqTFwozPIMMMlNCUCPZKITz6JnmIdRfHDohzW1297CD6t5ePeMMpORZGm5je8ED
	KXA6S6RV3DBZkr0mj6mPMl84U65x7HA759qUi8hI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc532e24-4267963f-e71f-4e7f-afb5-cec457bf6521-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 037ed939a6ba7be5c871a08dd8b08e769737c7d3e89b1445822ae82bd2e47595
Date: Tue, 5 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656990412
