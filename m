Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C38B1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647258984;
	h=To:Subject:From:Message-Id:Date;
	bh=xZBcQNzvka9EFepsW50vSm/NM7jvR8uR2ubtD6xBdqU=;
	b=Cmpuoc7gJq4p8Jj8sY41w6XLlLPi+QlTrpqBkJ3Q6DVFash9ObwsmJo/pC78JBxL
	AOtAcxT3/sXuxswpBOoxbLNHptXk3e0hScrfk0zzqd2l6IT/7ERUdbqXJZ8ldumfjh2
	2l3JyQe9xT3T4P+KQD4lQi8OfitvumCBcsKrv5/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647258984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xZBcQNzvka9EFepsW50vSm/NM7jvR8uR2ubtD6xBdqU=;
	b=GgV+joWKZPtevXA0KKFP1rL3Aweo9ahnOUNnTSjnaHOiVkL09NSvi4JxMZdTaIac
	txuf51+aeXjbOoaQFKgYvvLGoRm5etiWa7XK3t16czYEMi/jahYMTEXzTkDBlgV0VeU
	4R+Ejjcg8wMLgkz8sJhR9Elm4R7OG5sGLPEZc69g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f88496129-1996bc06-b900-407e-a3a3-b42e29f17c7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbe59d77c3af530e4b4a89cd9f30a6f2c13963361fdf9d13a86a319eae21900c
Date: Mon, 14 Mar 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647258984
