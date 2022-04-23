Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AA27C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 21:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650750658;
	h=To:Subject:From:Message-Id:Date;
	bh=EhwA3XTmocMtLJqwXmLzRYWBLKFiLgtRKUZ5zTqM1pg=;
	b=b+xWK1byXGoMJoFwd1bw4pk1j0NW7qp012a9x9FjJu6JG6TiLDvH3BN82NXugscz
	XWo8e3//M0tOFP7e4i+hrTaOmr7hO/iBOt2KLL0oM8Fz14UKxi13nk91a/8cHX9OdTz
	5PW9mkgN3j3IiOeRNAd+nn3M9HEe6yMdFkXQxkTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650750658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhwA3XTmocMtLJqwXmLzRYWBLKFiLgtRKUZ5zTqM1pg=;
	b=RKdgr5GC1LqJZnztowHOjAuaYsli36dhWnojyBS7H3SYGMdfPcS0EgLAoQ1f+iTb
	9YS+aL35kuMfLmizU+PNLfoRODUJHrXAGpJ7MyMUj94pBrWVlXfpSYIbv6NpLA+3KxQ
	rMAcxFbKzLMNQQl4uNeyKvkKiWbwDCP9fQM2PDlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180586816e2-c488732e-62ca-4c36-bbb6-2b0e5f1c1443-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef882f17d2041286413d3fc327246441c09caefef952725010afb5207983c165
Date: Sat, 23 Apr 2022 21:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650750658
