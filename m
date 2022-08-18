Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FE77B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660795252;
	h=To:Subject:From:Message-Id:Date;
	bh=FXEeTqFVpo0aQhzgc6QPSLEC2QcWa4U2lfsLJnBKLOM=;
	b=RpXDcIHuvG5+vOLHpgQhylwHb//DuixHxpxRL41uovSKdixlMW2qdwez9SfM04l5
	QSesk0ALIW0su27Q5AUomd+AujNDJJPqXNwlmdPegSnMKKbtAuyOq6V4AdSWF0ifnNE
	pG6DfWHuf/0fMgDRkHtfAw7uESccdsTVmoFIlcy0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660795252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FXEeTqFVpo0aQhzgc6QPSLEC2QcWa4U2lfsLJnBKLOM=;
	b=fZYIfPcMcq38zZzVrnV2VmZEWxR74EhAYdN5Bo/2QZwH48ygy2DoxMTzv+lwLWmv
	By8PkGltZkI+z9GUS4+/ALjxFgXrKPYESLosaPO8io/x46EgWtqONNPR3pIHja6AK/p
	c9PSyQx1Rv7asLjjweIkE5Gu7B4zhXQdj4tXolp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af1c6f42-76918a86-8ad1-4d6d-8154-58f16b441fe3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 405fc5d70734f37bdc8fd29934a6cd12dbffa3088fb589a6b0c670cafd3a90f6
Date: Thu, 18 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660795252
