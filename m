Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BCB1840
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 20:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649708218;
	h=To:Subject:From:Message-Id:Date;
	bh=vN8+NPHCeXLuEoxvUGOKkSHlc0Xmtn1FfBvTiivQsJY=;
	b=NYhMCYKfC+lQNzRMRzJGn4iQqN0dBee8P+hNQygUPErxgdGxAWZdfOSI7eG1YuQa
	cII4+frTusszdHgQFJAvLbjU1QXUrrwZOeKk2/r1fMwzmidWV4SI8QqnS4SDmF/VbHc
	6SeR0VeX3nCFxtm6yUgFgjdETgR9CCIkvqog65T4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649708218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vN8+NPHCeXLuEoxvUGOKkSHlc0Xmtn1FfBvTiivQsJY=;
	b=dOD4vD58f/EHZV+ueu9/Muln3QmmFeU3Kkd5N0TccUUnysTd/aeuHLeOtO8Y+lHv
	CaV1dRvfkbsu12JCw4iLf7VEjNBUfQes58jQ7b3rz7I3oFikqAgYAk10BisElSyi7l5
	0o7wpYJCFrW0eqdjo8RUDv6hvg1OYgKHAcsqMXlA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801a45b7aa-9f94c649-18d5-465f-905d-154d4ffafddf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4fb003e0009e54bb7644991171b4d815f86aec5814577f3b06945947e0d065d
Date: Mon, 11 Apr 2022 20:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649708218
