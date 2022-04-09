Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF4F7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 14:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649513878;
	h=To:Subject:From:Message-Id:Date;
	bh=ucZJBMj6p4+5jB39V5dRRB4G9wpk5hgMrRds5e0uLWs=;
	b=DngWvvOQSXIcJARzqVUWX9DytGJ/5q9pI8HroyRUiFuIadXmLc/CmIvWE0jtUD42
	X+pNiSMQFEsG+Cw3EQKzv87zLjkv7HabGN0hfyCdDEF3SyCu0AOz7yU8I8uBf7MRYNQ
	FyQq1PI5zV04oPfTPw1d1fp8VuT8nG7JqEE6CZ9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649513878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ucZJBMj6p4+5jB39V5dRRB4G9wpk5hgMrRds5e0uLWs=;
	b=V2o521nasj7Ao3tELx/XnP8UxRJYJhzX2ahf40ciG9XA85UjAnNnGsM/nwUU6EnB
	ai0g8M+6DoGbGbMkKtzD2ZuRCLmteWYKM9BttTDTxtq+Hb9LDVj9B+tOq5R9llcNNos
	WkfJJqx/ukeArqlD1cY8f5RQzClycFxtZxjt12og=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800eb05333-d7cb9b44-9975-49d3-9c51-421ab4b987fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 613094e09d669ed1d671ccf8aee202f9b7cb56ffa40924ec24c5bc19108ace19
Date: Sat, 9 Apr 2022 14:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649513878
