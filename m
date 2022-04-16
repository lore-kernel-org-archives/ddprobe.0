Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C397E
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 06:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650091918;
	h=To:Subject:From:Message-Id:Date;
	bh=XkvIHvDzB2yNJHr0cTAIZVogVHiKuoahB4BX2euq/E4=;
	b=frcsB1iVghPohPODT0gcVtx70WDJa1cbqB+LhOaJ1pGUuN62AR8yKOJtoVmNXdNt
	Ow320hoSSGHISFS8Sb+BFsKOBmRYDCABbOQPAeUmsATEBgty0CYMiRKmJt+ww/eMAZw
	rb1QyzxO4NKzUTk0hfxZ6rDtuq9vlRpEVpvEg9B8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650091918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XkvIHvDzB2yNJHr0cTAIZVogVHiKuoahB4BX2euq/E4=;
	b=YxPNdx2ouRu12xYq5QjvAlHy1nTjYaSYbdECEsWFm5XGkF1iOx7rA0q+Y2iJ0RlI
	ejjvkYfUuRZNet6HbDj0Pl7ZwyJvqXsb0sk9korTVPKiGvNwS0yzMyY/DZ7Skvd5sP2
	ZYXybdI5mIVdsmbE265LSFVQQDdgdX9zBByJJ6mg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180312483b7-1cf0fc1f-6744-40d2-b43d-618c953f4143-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a1cb65748682e39239ce81fb8665590ad8ed2b48c806cbf5ff009d1c36e42d4
Date: Sat, 16 Apr 2022 06:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650091918
