Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BBC2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 18:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647197784;
	h=To:Subject:From:Message-Id:Date;
	bh=ybVCtwnbm9Ich+W/odoc6L8TuTs/auEAD104mbdDG2c=;
	b=DCnGy7UQhiYUHlGXRPojANbIY5ya1yJIfoGtBOnhvlB9GAG9URhtt3LAElnEzDoC
	bvGK2kqEgBJo089yE54bT0vuss0kvVTQMPfR/aJDb3OYxauFZbJLvWS4NO12OQ1VmQV
	5N/S2dhH08ncudJnJ3XVdh7NmW7rt6UY477AJj7A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647197784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ybVCtwnbm9Ich+W/odoc6L8TuTs/auEAD104mbdDG2c=;
	b=LzjHWn33Eet3QzKNCuVQfpho/1+7H2F/b9I1E/nd4zGWplarBn7V6NmZPCGssV0j
	SCDUgtVlbsJj3J+h9B5Qp/IbcvU4p46iO2ENDsB3FatWtIYpk5zESi92Ag9257oCRZt
	5YGp7nFfQxa5jYL2QfANDza75DvxYYZw06rCXblQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84a38aa8-27619f67-b6f6-498e-86a2-539dc0548820-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fcbc0ebc743e91085bd964f24b69bb87695aaac747809cad068242e557148d3
Date: Sun, 13 Mar 2022 18:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647197784
