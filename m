Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B3BA1384
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 12:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652014799;
	h=To:Subject:From:Message-Id:Date;
	bh=XJNQ62kj6zAI/qhdzh3f/CLKn+F2w6DbsJZwj/3lK9Y=;
	b=GwcrAnGG9YZcSEpiH3ZgMz7k/lRFwd7JVW3fauKH5kQu1Gf6pt8+cPdemTPpEWHP
	aQ5TyiQy4XXAu6Om595UHaqymr0tmMHhGw6Ab17WuVC3UoLoFLq6Y7LrtR1nwo3PYN4
	tj+qM8B8VcD4wM13a8niTYiqicMgxV6hncH1KX3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652014799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XJNQ62kj6zAI/qhdzh3f/CLKn+F2w6DbsJZwj/3lK9Y=;
	b=A91suWBNgRSareXYH0/4qG7zCNPXXO2jKz2hSNqyAmc9IXtMmw8CExtv6jDGZwjR
	9sELEnEWkt7SN+mwvPutqz+ZvBycXMYkrGqhXzW2sKcaqLFwqXZkFQcTarb58pXKhkd
	hRPZAkRheua0e1XIfm2InGCa0UfNggn61PPchGH4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a3c15619-e82b8762-82b1-4e0b-8b21-0326974a9f94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 446b07a46a0b9fa9ed5b104680b8573107ac98c14a1d053d422ceed1dc67858f
Date: Sun, 8 May 2022 12:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652014798
