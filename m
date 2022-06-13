Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418737C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 19:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655148479;
	h=To:Subject:From:Message-Id:Date;
	bh=w3StnnGs8AuwGGDWCL3zTQm9hhlLHIYRjUKhvXpUnJY=;
	b=hPEg0wR0xW2jSjwzPjzFe0eSSRrzxqgDuOx3u4rBHkVtupXO9dyBwtYcybwoeY7a
	fnFOmW+fz8nuYkvEXhJ1P/gKLGM+BIhGiY3pOl9l0sOzrgm+iqXI8l9N7fV+pQ1KFdI
	N8o0a7GjOvOCdXKA4a3TY7pXfn0pRQiSyD59U3Lw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655148479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w3StnnGs8AuwGGDWCL3zTQm9hhlLHIYRjUKhvXpUnJY=;
	b=d+g2AkxlsGNTgayXkJtDbyqUuDIvUS6O5r8qMJzfaDimXG8f6yyjES0wZMirOJ6f
	H20OTfzX7AzBKgarf218tVgLGN43iABBPRkWaFIX8hA2TbwvktvVUAn2Yiyud/sLdnS
	CkUV/e2vREz6bkb1mtOQzN4Pq2dmqYvypAro6Wxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e89836a-862c5fd7-d604-45b3-bcc2-a2be2fd3f0bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45d3250060b264782985e1b37a86c703f65828b6749e0f9dfdf45ee25a86f858
Date: Mon, 13 Jun 2022 19:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655148479
