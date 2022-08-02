Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21447F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659412253;
	h=To:Subject:From:Message-Id:Date;
	bh=7nOZpfW6ZltKU33yevFzW9kyxGdZIZVsEC9+T+A4Sfw=;
	b=M0qt01PBye5z0cUu5TVwfzWXQ/5p3Rodila60246l+TaVEnq9q/+wRPsvR8b3DYZ
	0VJwl29Zn1pnYm+xt4uHJIAjJqsjbA6AmIGcVLS8i1aHgt/ZQ4zdnXlPgXLAa92XlQP
	bcJosNfGs1ZvXt7H1uaUqgqHRejarCW3dLC8M4zA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659412253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7nOZpfW6ZltKU33yevFzW9kyxGdZIZVsEC9+T+A4Sfw=;
	b=jmhJbFYZZP1T6qul8FZu4N27zQd8j14yaFYadTqFv+Kt9NB7yWjMLdYF5U2z3rHq
	xnJaEaBXKary8zGgJCvofLUycMUcf8jM2eTChs9+eK8j0fhBcFj2NZOkZBwR3Ugj5dI
	ZCHrjL83+/4Ac7ecihJhgwWmXvvRLdgOrlo2BdqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825cad87d6-38525af9-ab2e-4872-98f0-4dfe769668bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 195a8b5be620edc39703b3f3c95b7fabf01c21d2cfaca7f2224f978efbfbcbe2
Date: Tue, 2 Aug 2022 03:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659412252
