Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59F27C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656247612;
	h=To:Subject:From:Message-Id:Date;
	bh=Pi4EHzjgWV/2fr0NTt+8vUu3zghQk30eOlFQJIGrFpk=;
	b=JiXa4Oc1zi91wZx4bVTJWJ3paLniuvx5kDfJ+gYTBliPJDqzVxD4N+2KTV8QRJZ3
	OSrkH0vHzEGhNVwPWkFz5VWNORF9nY92mqzpYfwRuvZx4m6/6c7/DyKQmM15fRAa46A
	ovLXiy7pGmJOsmqzsAFJ2GlfozH4uOXpZnyvnhF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656247612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pi4EHzjgWV/2fr0NTt+8vUu3zghQk30eOlFQJIGrFpk=;
	b=Ez/KD+y7qYgfYVtqBI5gr6gkEYzQk9Ff74hHmWZsyaADgOqGj2/Iv+tyIC7mZUB5
	4rwXLFf3b84XStzBkxD0HcfcN96rnFZdTsLfg0bhNEFqhrHWZAbvQgnsb+qhn9r6riR
	e3YsxVAABQNJR/eAljauUb8YA98DHT+EiksRkpRc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a00cf374-321701e5-4d10-4941-9b74-82f9606b5e9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 638ff5b8c2bbe89077d898509bb0cda7f01858b14ad94dbae783d1784ffd6d86
Date: Sun, 26 Jun 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656247612
