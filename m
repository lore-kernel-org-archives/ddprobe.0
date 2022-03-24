Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0371FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648134059;
	h=To:Subject:From:Message-Id:Date;
	bh=4cG7R8k/TYw3bwmkn79es/KQJauQs1slTurOsoy3lxE=;
	b=UT1wHuFcyBgSgJ2mgAAUNMYoLDZYKXfXNqtsr4ukxQOmAajZQ6jVJK4vwjR/lKKN
	gCb9cydSlM3NxmasE9lpdSDsdMMNiTEMXCCgaaoi04uM0irwffuqzZ0aYp+9qojVzZg
	JjCGNiCrUh4otuILHK1xN2A7014JaTzg/8+bzjR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648134059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4cG7R8k/TYw3bwmkn79es/KQJauQs1slTurOsoy3lxE=;
	b=AuTnynsAHsIntkU+XvppR0Ptp1fh2HsykXtO5sI0ACJk3c3LXnTlgNtAYh565vRY
	y9AbAPhPh3/sN828iK2U3z8/3vp/2i7TUYvy8BmPAW1HtnLeoNdPfpysKqs4GCjL2uh
	Af2E8Vjm38e//dN0Bdomkq6d4eBDtp5S6mgEz4V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbc71f147-f36ead59-8075-4b31-8a86-365c679390e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2997174369072910d67635d96aeedc2a564794defb01383795811168f4cfdea
Date: Thu, 24 Mar 2022 15:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648134058
