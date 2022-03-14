Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1499A40
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647225985;
	h=To:Subject:From:Message-Id:Date;
	bh=FZIjUaYWJ375OnfDge8XQLhGxBa2pTod3kZBvCQfDNY=;
	b=eojby6lQSU4bnXNHbi8+N79n/7PlAZxt7NjFh+/6W5D6/ZI17qg8zg3zzrQis4HV
	y2S19MVrcX9R7MrSNE+L3rC7YlyfG7DyWVM98pcwU7kcqRzPS5WkYJwhaWUGuxBq0yK
	Oi3B4LrkD9wUy7tSqfKMeVD5aEbVdR8MjkZ5Bqkg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647225985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FZIjUaYWJ375OnfDge8XQLhGxBa2pTod3kZBvCQfDNY=;
	b=GYON2P1pREqxZFYo1BDaOBvdT/hLMyoN7HSg7t6/dXRgQW1u7ZxsWk/gqHVD9sxu
	5RcRVRIwKOhRcWblx/9xU9JQpv+eJEOZ1VFe9Hjpc4qmQalRMcsFNn2QZTRS6g1KNIy
	4uJdUusCPaK7Yo4t2lknyXQolbTpzA+8I0Ah7h6A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8651d725-c43003c7-92dd-4154-a9a0-69989ed1490a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fdd3d02673ec071095b6693f44ddad321d9f5407b7f58a63314c7ebe676eab0
Date: Mon, 14 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647225984
