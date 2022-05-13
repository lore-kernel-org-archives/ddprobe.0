Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED08211A
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 11:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652439599;
	h=To:Subject:From:Message-Id:Date;
	bh=Dov8eyP0Glf17zTEK6X+/8AYwOAZmn9w8Tn9rCwO+hY=;
	b=jJHf9fI2jxqrwvxM1MJC7bGf20weeecwYcdgz4KgQMShWlcNp9RKHaaGn3p8yhZh
	4Y6Rl54QXEBQB09cyPPpMAgHF1fcBLJwGibBnXYuDXOfbaFiUTiExY3PPIYxsk6LyyV
	U7VoNiX4HF6tsKM/bEt1h6Y7foO/fzfeZTnQ0zHc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652439599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dov8eyP0Glf17zTEK6X+/8AYwOAZmn9w8Tn9rCwO+hY=;
	b=UvUHaLezSr9rp/aji+AVVdzSiEzHt6wVdImTSkt1JL6e751SeQGwrlDjlFMAdg1Z
	q1OfpRfJvAF0FQIkYeqUCyW1c4gacinEInmV+eLpewZm/eYmMVsr6CBLKNGu3GOUy7n
	tjN6RL8Unf66G8LF89C0zrv2UoqrabAKDR8lg+oQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd13489e-1b8ba1f8-cbd2-4eb2-8102-bdc5876e0309-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f36d2262bf9ddb40d5975a2792539c9246560c7bea10cb800ce666189acf27eb
Date: Fri, 13 May 2022 10:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652439599
