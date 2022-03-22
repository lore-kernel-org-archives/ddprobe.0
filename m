Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ED696465
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 22:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647987985;
	h=To:Subject:From:Message-Id:Date;
	bh=FqjTPfgo1p33qnrWLAT2VNzFA3HaF8wN/9h9Ut56+LE=;
	b=mFE47sVKRKw+k3cA0y/VBhrJUuP9vx40rfytbgv5hNK3D9KXomzQjH1T8hu10FPs
	H8j7HLqCOyKftYMlS5TLgvXQdkv4eYW2smTdpvTu/vAtn6UR7zHJofKR0rbGCO/eAH4
	4vJndx9zP96C9So2BWpH2qX+gxcygV1RHvzsS7TQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647987985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FqjTPfgo1p33qnrWLAT2VNzFA3HaF8wN/9h9Ut56+LE=;
	b=AHdN9H6YZyRHU3ZwY4KZeZoLSqmm+fJfHBXIWGXgFOocMa92wshmAJ9ueb3AuHet
	mWwPAhFqbEehQgU5TTEFo3v6ahIvYvS/5K0CaK4FiscYxx+gqiUHOud4KtyzDN2ik9y
	KonfofHE/7Tf+TDD/bs+gFiJNCktU3evT5jIyf6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3bd0988-6ba03192-c124-44d6-8d8c-9db90e37dbd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed4e80879b53ea13a3e514a4a15400d951592b7695a2415807a8b7ccd7de76ed
Date: Tue, 22 Mar 2022 22:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647987984
