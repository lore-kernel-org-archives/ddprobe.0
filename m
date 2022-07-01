Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E94F13C14
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 17:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656695212;
	h=To:Subject:From:Message-Id:Date;
	bh=AeOMJlztj2GTeFB7Vhp+QApcudPK1BrNf6Cmdq6RFQo=;
	b=EfiRLJ1aZnaigMB3aakIw19DU3JjiEfFHY1m5TxdXZc5+gHQZ2M2vKMX0W16KO4M
	e2WCc57e+sWJCCwg9etaKONezbJ/KnWK4g0RGyUp8k0xRClKpJoRPNfUw0F2WQ+K4+v
	S3t3lOsSvwV1s4QQwJpA7b8JBUUeJuZJUaBvczJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656695212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AeOMJlztj2GTeFB7Vhp+QApcudPK1BrNf6Cmdq6RFQo=;
	b=b4TpBfqDwOYHdH8bYwFZTZgdKdbB0m+5SFeWVOatMwDqTFOFuD1Wei8sw8UtsDqp
	IaKp2NY3B5uf3cKmNQBbz+UWXNurRD+v/Dh7ZhQoTWuRjwWuvK2jtvCQByHHYqcfIS8
	ILkvMxlhbyw/B7AsTJWtyFTFWGv1wHZvTMOJoleQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181babac8f2-80db2b35-9bd8-45b9-ae3c-7c11a79e0f67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce3cbb70d6be6eef98847eb24aaac0b475cbaaf7f514f925507ceaab86637cd5
Date: Fri, 1 Jul 2022 17:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656695212
