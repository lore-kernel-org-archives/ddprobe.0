Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F247C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656031612;
	h=To:Subject:From:Message-Id:Date;
	bh=whd48o7FUnE4AOH9sQB1p42giuvzJ30hdQ+p9CtB4e8=;
	b=RvcyLwa0UbI9IshWFudmG5YdKvhFYWwOk9fYTLbSVZ8/65fgqFszJ8Wrsr1FlrVh
	SWWfWabX7Uubh0N4XoJuOt5MGrF3yemRWEw5I8gVfU2id/X0XaooBSz3ZZxfiM7I2Wt
	ze15zUWxFNZqOMstfSZYPhK2nlJj2dtSGsMSbxCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656031612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=whd48o7FUnE4AOH9sQB1p42giuvzJ30hdQ+p9CtB4e8=;
	b=QqJQdXxeeHrbVu7zB4TG+U3WfcOPbHRRue1fSyxOMLjU3h4gMA5HvNC91cPbwJa+
	ct7KXCCYUXhfGtwNfAwQ3dwPgni3N2hWB6ALEQPq3jYA/Xnbnj0wWAHMAJk6o2NWlCG
	6RhP5pvTdgdeYxlcuSISUDHk2oVlxwp8XSZhYVJA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181932d0d96-3462e8ae-3a0f-4c52-8326-ef97cfe3c22b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 507c572b4d126e2e3d938e2646d8d959bca7513d12a03e061ff88f9c53007705
Date: Fri, 24 Jun 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656031612
