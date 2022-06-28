Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A32C33D6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 23:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656460012;
	h=To:Subject:From:Message-Id:Date;
	bh=pgvsDS10X8+g1R7trAm8a8Y3Gctl6rfVLflYBsic06o=;
	b=R64GK5dto5DzOnJEEaPcYjD+w3HPWlX58e4CyLBAYVTx21t5AuNqzBwtbthv3nBR
	Fm+3XCmAzuS6hW+TgJenasAOrL1mLH7vwZxHcmIdIb0zZhIEpLEOCb6ptpibSldM4/W
	FoJQk1pVrNDK7OMDzZlJG7iLbJeJsQ9q6x5uvdNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656460012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pgvsDS10X8+g1R7trAm8a8Y3Gctl6rfVLflYBsic06o=;
	b=HDL6CP9zl8Gut9OQfJj43zcmUPXVi93Gym8B8Kxicl6eWnI3hoUpxycLI+WXm2qk
	OKTqI0nNCbPcnhFTNj4LaiHNXPuMnILSMAFgx3AerFv84OfjulbWAob3rvlYM193EDC
	1lqlHpMKYquMugEceGeT2NiWUN2LH3nzRybzUHtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acb5eb3e-b5683da7-cf86-462f-9ffa-25a47cfb0f3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99eb527d9460fae4fc8cc48b1303d5c234151e8afa14525539d733453d1d6b75
Date: Tue, 28 Jun 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656460012
