Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AEB1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647256585;
	h=To:Subject:From:Message-Id:Date;
	bh=a9uYkcWXa8GlVL6uQaPs/3YIfBxpucrVvrrjN6Ca8cg=;
	b=O0lEpximEUxjYvQPikyhlAB6LytkEpVCHgXjCltQzqAnZY519Xpw4+YShyuICCcE
	q70d8IMd/3LVrDh/RuB3zw0h4vtBzHIF3xqjV1kfRWV+YrdLsXyf39VIWz9VALwsUiP
	/trqOtGHwOVmFGuykofouYlTRAjta0oZDqTAjwcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647256585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a9uYkcWXa8GlVL6uQaPs/3YIfBxpucrVvrrjN6Ca8cg=;
	b=XNmC2bt3T5lPu573FNf9cgE7yoBlSD70N2/L6F8B5Ke4DIgbkTbZVcQ4q9Hoa5Dv
	oIExzx5A1arFRegqYZUK/WAQbGoxOBhzeVGzKBd9SJloB8nVGM3A0ohdyINKxK4XXHs
	Th/7HqPFxQYdm8Y+GuK46ZxeLP9CrN9eDiHl6AM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8824c280-2f29d0e8-91a6-4dcb-8ca8-177b66e13c61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44cdeb5783b8039687e630f5689d38d00faf64dcda482d78483f9f28eeab5b5b
Date: Mon, 14 Mar 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647256584
