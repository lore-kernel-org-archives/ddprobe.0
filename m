Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B0F10EC
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649663218;
	h=To:Subject:From:Message-Id:Date;
	bh=T8/9Mtr3Q6qZT5MdUseKY802nrOKd9tY1ng6vEtjpzo=;
	b=G04pdCTsmKIVtt/YFAy1qiZFqbn20QuBZIZ2ma08gZ4XyN5Q/ddA5i5Ivc+ST9Sh
	8qBgtAtaQXHJxbXZes9jA5YBLFdbFxRSGnpkK9hi0OKTAEqpdZVo0Eam1R0LeL1mp2e
	vYAkBui6OW/1rufsMa8kBWuXHzQ4FlH7lD74EQAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649663218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T8/9Mtr3Q6qZT5MdUseKY802nrOKd9tY1ng6vEtjpzo=;
	b=Irz1Pc1zAak7epmvUwGhI0ii+6CTEsxgIqOYmTp4Vxc03Weqq0tfK+jJFP/xb3fA
	8PBQrmBxqhZGqZ2w9OGtzS8qY9ZkKThGjE7vOykqnEEAswuEEts/3t1z3r3siP/bBMu
	xG7ZBDJqgV47htGde7gKT4PzcKVIP99bR3n0VuPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801797126b-e0988fe6-9fc8-4603-ac45-e8701f0b988b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2403b515a8f91d8711937d31b3d62fed2505788a515589fb0d3c37a01475d92
Date: Mon, 11 Apr 2022 07:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649663218
