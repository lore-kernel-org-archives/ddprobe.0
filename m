Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C514179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658684812;
	h=To:Subject:From:Message-Id:Date;
	bh=urUUm0Fuzmj+rmg1wmN8lMpwRaQWatITVrZOTg+JTeM=;
	b=ifYwRP8ogO4zZhA+LbKOEOCuJx7Th65mIKDg/fsf6k/mjE3CJwjX+BomCW+uZJh0
	KwhuC22T1XvqnliqamgJ6QZa0GU3nKfNAy6pPQcaIIZHCHSt0eR/toZ3QI0MI3c7yYt
	S4BH9QDluhgA2ayexLuecYvFzfNA+GHAYyUD+zyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658684812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=urUUm0Fuzmj+rmg1wmN8lMpwRaQWatITVrZOTg+JTeM=;
	b=LwYC0uSE93byjmrUu9ghgDwO63QpWjkS+0N6XZnuN1rg7tPqbAo2sO9ZUT8nbyV8
	4vrpdrKLbtuKxdZSnVOHM26vWD1XZ7E7hHrHzz3qKPF1UrbGgWJBnwzW486eiIQIAgi
	O7JhpkGHBExXr22Z/iaeC0k2oVYyIvvN/uu60h64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823151ac41-722bf949-449d-4058-ab3e-0801c6289fb7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ef1849fd2369a5f2d93172070e7c9e4045d517130288df016a2045f17180198
Date: Sun, 24 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658684812
