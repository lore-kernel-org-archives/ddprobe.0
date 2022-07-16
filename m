Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3404A638
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657970812;
	h=To:Subject:From:Message-Id:Date;
	bh=4LEUwVFHxQfE+ftSKaRPSVpJgDeBZblHh1aeyFxgkfQ=;
	b=kLV815MS6xwIhmXNZB+uCr6ry4hyVPBJkJfJCKWK08OKS+6dzcCMvxKPmBJWEtLc
	uHEPKEZODjLFg0VNoQ+aE00+sxZAqoeAWbS5ffkjjyI+tOtbt3und8YpA5H/lqz27nx
	ogXPgxWCUdlxeo/s39rfppP74yPun60qvzbrE6Zk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657970812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4LEUwVFHxQfE+ftSKaRPSVpJgDeBZblHh1aeyFxgkfQ=;
	b=ag9ecYmG/NX6XMej9BgfshWIWF7MxXj1iucSl6iCaCAt89QU95c3sE0qFJqN+TA5
	iHE5RyYmv3W3/iN8lO05oh0q7oZu5Mtc+V1Tx6f0zNWWTjWEPtLkSU/O8gtF51u6rq8
	r+UO5y+bcg4GJo7km8ZGThxy9M/zCG4GBuFzO1J4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018206c2e598-46bdc144-1add-42d7-8eab-4a306d0d1954-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06662e850385bca2559812f6ffd8adbc8195e46045c2d0df801ad7c9e3a12e86
Date: Sat, 16 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657970812
