Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEDA10E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656642412;
	h=To:Subject:From:Message-Id:Date;
	bh=DYlBXKxMsrJtJWG0TlcLqCrJAEgx6glFaJB5Zg0JtIk=;
	b=kJgVRDphnQinJJhVhaYx+sSdOLMy96nI2Xq7IvjQ+ng00gb8Ia0kG7jkjmmCRZK2
	ocyoG0u4vNHMqOyDgZBb1wZqYkyYz9cwqxZtsQU5ttWLP+eLjy1dU6UmcgfmpuBPtEv
	5WbrJqKiNYcerC04uhvHhXZfIakX2iqyUJZgyg9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656642412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DYlBXKxMsrJtJWG0TlcLqCrJAEgx6glFaJB5Zg0JtIk=;
	b=hLd+2IrlPRIqjRO4od90CA9fBjyOshfY4Z761CWLMus6uNSreEfA8+wG+ljcGmof
	v6+OA6toxRQ3y8j1CVXbUjnnXyrz02CMDOrofaZw1kCb2qNLxOnihp2c3XJxypG+txI
	ISSYOT48GlJ73MJOcaDs0XQiQvPOwPxqaXXygwu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7951ee9-9971160d-83c5-4f90-9e38-f4e136dfbec7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f23cafe6d88f8513d4976b32b2affd35ba7ed86fa33d75c4c9c398032b1a1d7
Date: Fri, 1 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656642412
