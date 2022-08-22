Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A3624C6C
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661211652;
	h=To:Subject:From:Message-Id:Date;
	bh=s1kc8uySdJiu8p54iN5iyx/aSFtwR3sV8AQ82jjGJZc=;
	b=J/On5yj5D1iymlfJXFx1JFEzc/Sbx0AjwfeGxjF4hJJ+6Ip5wgGKgFVcuPFZFxxc
	B/25DSbGKbdYbpNfwNmGBhQin0SJkxMI7Arg5xrJ/8VMmw7Xtzp3QahVQ9q343vrUpH
	Vi/Mp+IKzXVhz/tEV1itIA1leXlYfqCAZqf1Fo2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661211652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s1kc8uySdJiu8p54iN5iyx/aSFtwR3sV8AQ82jjGJZc=;
	b=apb8ajIjEzVa08aYwZKYvluGUQM9fo/jS1giw5hW4o1w0ns9V0mzNkv5ptMc/jbd
	E1w/a9LaDIBJx8MZ4GOnjmHy9sFhwOvoYRekLILIOHIBRt8GbzjUTvBlYyjJ9xQ8hC1
	WvxYn4rH8uCmRCWBF0azG/ldeYqbDjnnqx11fEO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7ee31bd-358d7a6b-8f6c-41fa-be21-f0accb144404-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ba97cb9e03fa186356c44f2339a615f3f6d3c176fb8ae629d111cdabaa5c235
Date: Mon, 22 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661211652
