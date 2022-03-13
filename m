Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68279361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647204084;
	h=To:Subject:From:Message-Id:Date;
	bh=TORKzt8OqWt8A7nanWlN6TC1l2Iqk1N8jDrFTABTYJE=;
	b=eLVXFnGz9kmDQaiQSPUb3Urbfuks00hNfpOkhXjEMnmYOlGL4kYY6ZBi+JEyet/S
	MXSsMPS+Mqx63LAzkkFNDNKPvF3SkoT+/fGjPY6ws36/zLf1VhBM9gw7Gc8Ytmp2V0n
	lgRa9yO6ZK/j2V9vHN9/gGekEpl+NJLCJ2iP5WBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647204084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TORKzt8OqWt8A7nanWlN6TC1l2Iqk1N8jDrFTABTYJE=;
	b=Wi1Pz98tLyDfRCeHyI3U9z2/u3TbLFYzRZr7tm4JXbcl7AjoCQL0DwRiotf5Qea6
	ikykECUKPiErtoYjOkfA/0XrUhyrC4CbLxLoqGP3BpNYX5geAhTMu3PJu2xHZ9ItI1t
	cVfLLXM7PEvxlyaSn5zcEnDOvGKGdBtsBf+wMUc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8503ac2e-2cb92d3c-41ef-4082-a3a3-82c9beadf329-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f75580eb03c920d16f854d95be1eae7fa65df365c14c88b4fe6e98ea398b73a
Date: Sun, 13 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647204084
