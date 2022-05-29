Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A3D17C2
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 10:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653819119;
	h=To:Subject:From:Message-Id:Date;
	bh=t+HpKwT+PN221VSHt4aKvqAM6F5FkMMhfEmIs7EI59w=;
	b=h/d7N19wGXLdsmxWlsiQLIHOcBBXXOb8xWpzpV6R64EYUIwvtdqAbJxWLNO7IDJ/
	c7KCCg/Hg7cU5MjHuP00xl9cz8Riww6E0sVvNUNQzfhgBUmQwnDsK0sS1myrG5KPzcq
	4c2JKdMPLTFFh5gwaeEt8wR+ssNGcnlGGtcQfCpI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653819119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t+HpKwT+PN221VSHt4aKvqAM6F5FkMMhfEmIs7EI59w=;
	b=A46EpuuJzSzr6SzlSwpqn240WO6FpJHRBjnmpAuZwTHp7LUaScBYPEPe0qB3MDwJ
	laRNd+pRGRRx+/AwkMAFHuNejJK71pLl10gr1GJQcj8q42NaN+g/ut0J4pfdmiJvpYv
	T8yz5tuRu+3HlMW4QQODfyK2wQE+sh8a9mf2ASpI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810f4d16b9-fe05d1f4-f987-4f5d-89d9-129a3ab128fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38bc4a7ae82f79b2b911af1e0a4c458f0b0f7779abb973a0267cd883f7037eb9
Date: Sun, 29 May 2022 10:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653819119
