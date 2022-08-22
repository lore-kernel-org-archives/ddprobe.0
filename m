Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326B6632
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661140252;
	h=To:Subject:From:Message-Id:Date;
	bh=zC/oVf1Tnp6hggekPNeDb0fVomAQf8h/jmTyqSUG/vM=;
	b=HJre+oqidq5oqtY19dNpjeI8Vx0isVETao5MJUxxbtJg0KFXPx6D1Pmu6jakoeIF
	/mfRFK5oGbVyDiAoH3OghTqpFtV3U33MUqUJwTk6AhKg0rlPolvujkTr7/zQoZRbmKM
	Fnmk8cM6LpYeMJUH4v5f9NgtJugM5yG+Nr7Q7vQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661140252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zC/oVf1Tnp6hggekPNeDb0fVomAQf8h/jmTyqSUG/vM=;
	b=hZNbZUt77XdwJTNoTyw4dL2Sy6vbB9Muv/PatMs8pTU+sPd62oZoCSaJHTXOsZUx
	Mgjl4uQfZMvVzRxo2E3sgcsZT9sujA/DmcbbSIp7Nq4e9hm/ZU1p52IAeGLbdtzDVX9
	sbYsEzjvwnYnSp2dCHy3Jg0o5XB8tkzn1hY8Vb5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c3acb7a9-a40430a9-c475-493f-8b45-b4b501b24296-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e29e4558979203560bddc9d96b538f22e6f1cf169ec67882a5fe0d4cf01f9b18
Date: Mon, 22 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661140252
