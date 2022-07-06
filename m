Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63CE246A2
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657109212;
	h=To:Subject:From:Message-Id:Date;
	bh=yMhgLPNspbReWPjpzGfISye2Wr4D5Y30oOjuXWP1dP8=;
	b=EJ9w2jePQ0AcNg8toKeUzd4M0qPsKlMsWsnHIbbDsw7uXYWe5o2GIZzqpmvoE4Kb
	T3HIWgTuNfJCjmcgobx9lzoWO1Z59GDun8OL2JMxV18Jrerrw4lD2NWmjVjL0wwij6C
	3z9iXQUgCNvczL0rJFliGiEn+f0jj0gURfSPsD/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657109212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yMhgLPNspbReWPjpzGfISye2Wr4D5Y30oOjuXWP1dP8=;
	b=U+AHZTGPdPZy/Ae5IVQfQkJkn4vocEuyEba4i6nVspU2qV6o6JhiaHkId8IoLfgs
	FxI5ygmiTX6ZCw3hJKBPbGEvJqngsYv/nInjwbUGC8XCceM0jlroQrHY6L5r1XpTj+l
	1nI9jy8uq2eLtGcbUfTFpiWk45dV8G6q3EVOq+3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d367ec85-8055b060-8313-4780-ab83-ddcf7314168a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cdb5e3f6d901ec1d6857f87cada2a98e8b3f66a0c79689de0a6d1d0e01914e2e
Date: Wed, 6 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657109212
