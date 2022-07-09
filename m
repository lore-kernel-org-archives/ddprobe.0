Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A807B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657358212;
	h=To:Subject:From:Message-Id:Date;
	bh=mlWttwecXOsIeIyFAXdhum3IvI55LWt56lZ+uv+xzKM=;
	b=LjOYaPZknaGD88N4degS7kU3jbNToJnXm8GMRgzAqfM6kR+quCRTabcZddDzcLYJ
	S6w0i+M5CvnWXJ2ROi9R1pOj/efLmaijh5kUfGy/w6gWKb/fV24zLHa8pMXwsbV24nr
	TisA1/EDblOgUaeYIpgs2riEbwgNMziZxQZSNf1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657358212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mlWttwecXOsIeIyFAXdhum3IvI55LWt56lZ+uv+xzKM=;
	b=DE43ysY9lMwSIOpN2iyiSjFy7A99GqTQEu+Vi48umT+D/HckQpbdhsQ6kdujAqV8
	gAWE+jUhfZE6XB36OdINcFwOeXteddMc132sPlyunrVgA+o3gOCEwnnaxJKOBnq9CTR
	h6xFHF+3M6bKE/JPI4jQpfX2JDL+E2bndQ2SHRZY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e23f5d1a-02eae44a-1c49-45da-8a19-287554c9e58e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e2999ad05abfafcdb5a28c12046096a907964a9e33a4c616fc619bd55ac0661a
Date: Sat, 9 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657358212
